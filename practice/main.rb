# encoding : Big5
class Account
    attr_reader   :number, :balance
    attr_accessor :name
    
    def initialize(number, name, balance)
        @number = number
        @name = name
        @balance = balance
    end

    def deposit(money)
        if money <= 0
            raise  ArgumentError, "Must be positive number."
        end
        @balance += money
    end

    def withdraw(money)
        if money > @balance
            raise  RuntimeError, "Balance doesn't enough."
        end
        @balance -= money
    end
end

acct = Account.new("123-456-789", "Justin", 0)

puts acct.number    # 123-456-789
puts acct.name      # Justin

acct.deposit(100)
puts acct.balance   # 100
acct.withdraw(50)
puts acct.balance   # 50

acct.name = "Caterpillar"
puts acct.name