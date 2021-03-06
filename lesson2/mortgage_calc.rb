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

def get_input(message)
  num = 0

  loop do
    prompt(message)
    num = gets.chomp

    break if valid_number?(num)
    prompt(MESSAGES['invalid_entry'])
  end

  num
end

# Begin code execution
prompt(MESSAGES['welcome'])
prompt(MESSAGES['ask_name'])
name = gets.chomp
prompt("Hi, #{name}!")

loan = get_input(MESSAGES['loan'])

months = get_input(MESSAGES['months'])

int_rate = get_input(MESSAGES['interest']).to_f * 0.01

# m = p * (j / (1 - (1 + j)**(-n)))
mo_payment = loan.to_f * (int_rate / (1 - (1 + int_rate)**(-(months.to_f))))
prompt(MESSAGES['payment'] + format('%.2f', mo_payment).to_s)
