LIMIT = 90
MIN_BALANCE = 1

class Oystercard
attr_reader :balance
attr_accessor :in_journey

  def initialize
  @balance = 0
  @in_journey = true
  end

  def top_up(money)
    if balance + money < LIMIT 
    @balance = money + balance
    else raise "Limit is £#{LIMIT}"
  end

  end
  def deduct(money)
    @balance - money
  end

  def touch_in
    fail "There are insufficient funds" if balance < MIN_BALANCE
    @injourney = true
  end

  def touch_out
    @injourney = false
  end

  def in_journey?
    @injourney = true
  end
end