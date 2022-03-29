LIMIT = 90
MIN_FARE = 1

class Oystercard
attr_reader :balance, :entry_station
attr_accessor :in_journey, :balance

  def initialize
  @balance = 1
  
  end

  def top_up(money)
    if balance + money < LIMIT 
    @balance = money + balance
    else raise "Limit is £#{LIMIT}"
  end
  end

  def deduct(money)
    @balance = balance - money
  end

  def touch_in(station)
    @entry_station = station
    fail "There are insufficient funds" if balance < MIN_FARE
    in_journey?
  end

  def touch_out
    deduct(MIN_FARE)
    @entry_station = nil
    in_journey?
  end

  def in_journey?
    if @entry_station == nil
    false
    else true
    end
  end
end

