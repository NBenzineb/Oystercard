class Oystercard
attr_reader :balance
attr_accessor :in_journey
LIMIT = 90
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
    @injourney = true
  end

  def touch_out
    @injourney = false
  end

  def in_journey?
    @injourney = true
  end
end