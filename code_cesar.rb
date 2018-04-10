def chiffre_de_cesar (string, number)
    cesar_string = "" #initialise un string vide
    string.each_char { |i|
      if ("a".."z").include? (i.downcase) #pour chaque lettre check si sa minuscule se trouve bien entre a & z
        number.times {i = i.next} #Transformes les lettres le nombre de fois voulu
      end
      cesar_string << i[-1] #ajout du caractere a la chaine cesar_string
    }
    cesar_string
  end
  print "Quel est le message?"
  text = gets.chomp
  puts chiffre_de_cesar( text, 5 )
