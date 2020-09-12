=begin 
P: Create a mortgage/car loan repayment calculator
- Inputs: loan amount (int/float), interest rate (float), loan duration (int)
- Outputs: monthly payment (float)

Formula to use: m = p * (j / (1 - (1 + j)**(-n))) 
    m = monthly payment
    p = loan amount
    j = monthly interest rate
    n = loan duration in months
=end

require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

def prompt(message)
  puts "--> #{message}"
end

def valid_number?(num)
  num == num.to_i.to_S
end

prompt(MESSAGES['welcome'])
prompt(MESSAGES['ask_name'])
name = gets.chomp
prompt("Hi, #{name}!")

loop do 
prompt(MESSAGES['loan'])
loan_ammount = gets.chomp #make sure it's a valid number
end

