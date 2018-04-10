
def jean_michel_data
  dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "low", "own", "part", "partner", "sit", "sit"]
    dictionnary.uniq.each do |elem|
  puts "#{elem}\t#{dictionnary.count(elem)}"
    end
end
jean_michel_data
#ligne 3 on met la liste sur laquelle on veut travailler nommée ici dictionnary
#ligne 4 .uniq.each do |elem| qui va chercher chacun des éléments séparément de notre array nommé dictionnary
#ligne 5 on lui demande d'afficher combien elle a trouvé d'éléments pour .each dans la liste
# lignes 6 et 7 comme il y a deux functions def ligne 2 et do ligne 4 il faut fermer 2 fois avec end.

=begin
def jean_michel_data
  dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "low", "own", "part", "partner", "sit", "sit"]
    dictionnary.uniq.each do |elem|
  puts "#{elem}\t#{dictionnary.count(elem)}"
  end
end
jean_michel_data
=end

#la différence ici

  sentence = "Howdy partner, sit sit down! How's it going?"
  frequence = Hash.new(0)
  words = sentence.tr('.,;"!\'?"', '').downcase.split(' ')
  words.each do |word|
    frequence[word] += 1
    end

a = frequence.sort_by { |word, count| count }
a = a.reverse
puts a.inspect



#même technique que plus haut sauf que on utilise le loop ici à partir du texte
#puis on l'inspect pour voir les récurrences
#je n'ai pas trouvé comment tronquer "Howdy" dans le résultat
# en effet Félix demande qu'il soit tronqué et comptabilisé 2 fois "Howdy" et "How's"

# la ligne sentence.tr cela remplace ce qui est entre guillement à gauce ici',;:!\', par ce qui est à droite ici un espace ' ')
