
#On fait appel au texte original de Shakespeare avec l'option ci-dessous

def get_file_as_string(filename)
  data = ''
  f = File.open(filename, "r")
  f.each_line do |line|
    data += line
  end
  return data
end
#Le texte entre dans un string
skspr_txt = get_file_as_string 'shakespeare.txt'
#ensuite on performe dessus la recherche pour chaque mot combien de fois il apparait

frequence = Hash.new(0)
words = skspr_txt.tr('.,;"!\'?"', '').downcase.split(' ')
words.each{|word| frequence[word] += 1}


a = frequence.sort_by { |word, count| count }
a = a.reverse
puts a.inspect
