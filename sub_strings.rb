def substrings(str,array)  

  str_downcase = str.downcase 
  result = Hash.new(0) 

  array.each do |word| 
  regex = Regexp.new(word)  
  matches = str_downcase.scan(regex).count 
  result[word] = matches if matches > 0
  end  
  result
end 

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"] 

substrings("Howdy partner, sit down! How's it going?", dictionary)
