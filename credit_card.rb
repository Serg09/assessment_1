# Credit Card
class CreditCard
  attr_reader :balance
  def initialize
    @balance = 0.00
  end

  def charge(amount)
    @balance += amount
  end

  # subtract a payment amount from the balance
  def payment(amount)
    @balance -= amount
  end
end
