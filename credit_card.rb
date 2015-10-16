# Credit Card
class CreditCard
  attr_reader :balance, :deposit, :withdraw

  def initialize(_balance, deposit, withdraw)
    @balance = 0.00
    @deposit = deposit
    @withdraw = withdraw
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount_2)
    @balance -= amount_2
  end
end

creditcard = CreditCard.new('balance', 'deposit', 'withdraw')

puts "The account balance is $#{format '%.2f', (creditcard.balance)}"
puts 'How much do you want to deposit?'
amount = gets.chomp.to_f
puts "You have deposited $#{format '%.2f', (creditcard.deposit(amount))}"
puts "The new account balance is: $#{format '%.2f', (creditcard.balance)}"
puts 'How much do you want to withdraw?'
amount_2 = gets.chomp.to_f
puts "The amount of your withdrawal is: $#{amount_2}"
print 'The new account balance is: $'
puts "#{format '%.2f', (creditcard.withdraw(amount_2))}"

if creditcard.balance >= 25.00
  puts 'Thank you for using a Bank.'
elsif creditcard.balance < 0.00
  puts 'ALERT: Negative balance!'
else
  puts 'WARNING: Low balance!'
end
