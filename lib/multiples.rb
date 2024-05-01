
def  is_multiple_of_3_or_5(current_number)
    if current_number.is_a?(Integer) && current_number >=0
    
        if current_number % 3 == 0 || current_number % 5 == 0
         return true
         else
            return false
         end
    else
        return " Yo ! Je ne prends que les entiers naturels. TG. "
    end
end




def sum_of_3_or_5_multiples(final_number)

    if final_number < 0 || !final_number.is_a?(Integer)
        return " Yo ! Je ne prends que les entiers naturels. TG."
    end

    final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro

    # Ici, lance une boucle qui va de zéro au chiffre "final\_number" EXCLU (car on est sur du strictement inférieur)
  (0...final_number).each do |n|
    # cette boucle indente à chaque tour une variable (par exemple "current\_number") qui vaudra 0 puis 1 puis 2 ... etc.

    if is_multiple_of_3_or_5(n)
        

       # si la réponse est "true", alors je rajoute la valeur de "current\_number" à la variable "final\_sum".
         final_sum += n
    else

       # si la réponse est "false"…ben y a pas de else : ce "current\_number" n'est pas multiple,
       next " Yo ! Je ne prends que les entiers naturels. TG."
       # donc on passe au suivant en oubliant celui-là. On repart dans la boucle.

    end

    #Ici, positionne la fin de la boucle
  end
    return final_sum #on retourne la variable qui contient la somme du tout

  end

  