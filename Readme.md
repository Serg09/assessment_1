Did several versions. The credit_card.rb is the last one.

If I remeber homework correctly, this is most simple and close code.

> Add credit card payment method which takes one argument and a method and should subtract the amount from balance

class CreditCard
  attr_reader :balance

  def initialize(_balance)
    @balance = 200.00
  end

  def subtract(amount)
    @balance -= amount
  end
end

credit_card = CreditCard.new('amount')

puts credit_card.subtract(100)

> While I was learning new methods I have saved few more versions. 

> The credit_card.rb the last version.

### Version ONE

      class CreditCard
        attr_reader :balance, :deposit, :charge
      
        def initialize (balance, deposit, charge)
          @balance = balance
          @balance = 0.00
          @deposit = deposit
          @charge = charge
        end
      
        def deposit(to_account)
          @balance = @balance + to_account
        end
      
        def charge(from_account)
          puts "Your withdraw is $#{from_account}"
          @balance -= from_account
        end
      end
      
      creditcard = CreditCard.new('balance', 'deposit', 'charge')
      
      puts "Your balance is $#{creditcard.balance}"
      puts "Your deposit is  $#{creditcard.deposit(115.25)}"
      puts "Your new balance is $#{creditcard.balance}"
      puts "Your new balance is $#{creditcard.charge(97.18).round(2)}"

### Version TWO

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

### Credit Card (original)

      class CreditCard
        attr_reader :balance
        def initialize
          @balance = 0.00
        end
      
        def charge(amount)
          @balance += amount
        end
      end
