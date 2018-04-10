
def summon
  add = (1...1000).to_a
=begin ici on crée une variable indiquant que l'on veut utiliser les chiffres
de 1 à 1000 non inclus(..=inclus le dernier chiffre/ ...= n'inclut pas le dernier chiffre)
 le .to_a transforme la variable en tableau.
=end

  sum = 0 #on prend une variable nul qui va servir à l'incrémentation
  add.each{|x| if (x % 3 == 0) || (x % 5 == 0)
    puts (sum += x)
  end }
end
summon
=begin
et là on vérifie pour chaque chiffre du tableau (.each), si il y a des multiples
de 3 ou de 5 en utilisant les modulos (%), si ils sont égale à zéro cela signifie
que le chiffre testé n'a pas de reste et de ce fait qu'il est multiple de 3 ou de 5
(on teste les deux grâce à ||)
Puis on affiche la variable sum qui est égal à 0, incrémenté par chaque multiples
de 3 et de 5 se trouvant dans la tableau de la variable "add" .
=end


