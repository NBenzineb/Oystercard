LIMIT = 90
MIN_FARE = 1

class Oystercard
attr_reader :balance
attr_accessor :in_journey, :balance

  def initialize
  @balance = 1
  @in_journey = true
  end

  def top_up(money)
    if balance + money < LIMIT 
    @balance = money + balance
    else raise "Limit is £#{LIMIT}"
  end
  end

  def deduct(money)
    @balance -= money
  end

  def touch_in
    fail "There are insufficient funds" if balance < MIN_FARE
    @injourney = true
  end

  def touch_out
    deduct(MIN_FARE)
    @injourney = false
  end

  def in_journey?
    @injourney = true
  end
end

