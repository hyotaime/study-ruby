# frozen_string_literal: true

# 3.3 접근 제어
# public, protected, private
# 루비의 접근제어는 동적으로 결정됨.
class MyClass
  def method1 # 기본적으로 public
    #...
  end

  protected # 이후로는 protected
  def method2 # protected
    #...
  end

  private # 이후로는 private
  def method3 # private
    #...
  end

  public # 이후로는 public
  def method4 # public
    #...
  end
end

class MyClass
  def method1
    #...
  end
  def method2
    #...
  end
  def method3
    #...
  end
  def method4
    #...
  end
  public :method1, :method4
  protected :method2
  private :method3
end

class Account
  attr_accessor :balance
  def initialize(balance)
    @balance = balance
  end
end

class Transaction
  def initialize(account_a, account_b)
    @account_a = account_a
    @account_b = account_b
  end
  private
  def debit(account, amount)
    account.balance -= amount
  end
  def credit(account, amount)
    account.balance += amount
  end
  public
  def transfer(amount)
    debit(@account_a, amount)
    credit(@account_b, amount)
  end
end

savings = Account.new(100)
checking = Account.new(200)

trans = Transaction.new(checking, savings)
trans.transfer(50)
# checking의 50달러가 savings로 이체됨.

# 단순 비교를 위해 protected를 사용한 예제
class Account
  attr_accessor :cleared_balance
  protected :cleared_balance
  def greater_balance_than?(other)
    @cleared_balance > other.cleared_balance
  end
end
