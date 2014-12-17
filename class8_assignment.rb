# Use the same logic as the previous exercise. Create a long string with each word of the string. 
#Then pick out each word of a string and assign a number to the string.
# Then count the number of times that the variable occurs.
# Store the count and the word in a hash.
#Puts the largest count and word.

use_file = '/Users/katelynengel/Desktop/WebDevelopmentClass/Class8/readthis.txt'
h = Hash.new
f = File.open(use_file, "r")
f.each_line { |line|
  words = line.split
  words.each { |w|
    if h.has_key?(w)
      h[w] = h[w] + 1
    else
      h[w] = 1
    end
  }
}

h.sort{|a,b| a[1]<=>b[1]}.reverse.each { |elem|
  puts "\"#{elem[0]}\" has #{elem[1]} occurances"
}
