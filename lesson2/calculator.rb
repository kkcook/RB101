# frozen_string_literal: true

# calc.rb
require "pry"

def prompt(message)
  puts "==> #{message}"
end

def valid_number?(num)
  num == num.to_i.to_s
end

loop do
  num1 = ''
  loop do
    prompt('Enter first num:')
    num1 = gets.chomp
    if valid_number?(num1)
      break
    else
      prompt('Please enter a valid number.')
      binding.pry
    end
  end

  prompt('Enter operator:')
  operator = gets.chomp

  num2 = ''
  loop do
    prompt('Enter second num:')
    num2 = gets.chomp
    if valid_number?(num2)
      break
    else
      prompt('Please enter a valid number.')
    end
  end

  output = case operator
           when '/'
             num1.to_f / num2
           when '*'
             num1.to_i * num2.to_i
           when '+'
             num1.to_i + num2.to_i
           when '-'
             num1.to_i - num2.to_i
           else
             'Invalid operator, try again.'
           end

  prompt(output)

  prompt("Would you like to keep calculating? Type 'y' if so.")
  continue = gets.chomp.downcase
  break if continue[0] != 'y'
end

# test
