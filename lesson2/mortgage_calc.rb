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

# Methods
def prompt(message)
  puts "--> #{message}"
end

def valid_number?(num)
  num == num.to_i.to_s
end

def get_input(num, message)
  loop do
    prompt(message)
    num = gets.chomp

    break if valid_number?(num)
    prompt(MESSAGES['invalid_entry'])
  end

  return num
end

# Begin code execution
prompt(MESSAGES['welcome'])
prompt(MESSAGES['ask_name'])
name = gets.chomp
prompt("Hi, #{name}!")

loan = get_input(loan, MESSAGES['loan'])

months = get_input(months, MESSAGES['months'])

interest = get_input(interest_percent, MESSAGES['interest']) * 0.01

puts interest
puts months
puts loan


#m = p * (j / (1 - (1 + j)**(-n))) 
monthly_payment = loan * (interest / (1 - (1 + interest)**(-months)))
puts "this is the monthly payment: #{monthly_payment}"
