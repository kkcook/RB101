def palindrome?(str)
  str == str.reverse
end

def substrings(str)
  palindromes = []
  counter = 0
  end_counter = 0
  
  while counter <= str.size 
    end_counter = str.size - 1

    while end_counter > counter
      if str[counter] == str[end_counter]
        substring = str[counter..end_counter]
        if palindrome?(substring)
          palindromes << substring unless palindromes.include?(substring)
        end
		end
		
		end_counter -= 1
    end

    counter +=1
  end

  palindromes
end

puts 'Enter a string:'
input = gets.chomp

puts "The palindromic substrings are: #{substrings(input)}"
