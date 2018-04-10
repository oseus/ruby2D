
def jean_michel_data
  dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "low", "own", "part", "partner", "sit", "sit"]
    dictionnary.uniq.each do |elem|
  puts "#{elem}\t#{dictionnary.count(elem)}"
    end
end
jean_michel_data
