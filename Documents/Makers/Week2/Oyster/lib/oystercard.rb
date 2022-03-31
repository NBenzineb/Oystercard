LIMIT = 90
MIN_FARE = 1

class Oystercard
attr_reader :balance, :entry_station, :exit_station, :trips
attr_accessor :in_journey, :balance

  def initialize
  @trips = {:entry_station => nil, :exit_station => nil}
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
    @trips[:entry_station] = station
    fail "There are insufficient funds" if balance < MIN_FARE
    in_journey?
  end

  def touch_out(station)
    deduct(MIN_FARE)
    @entry_station = nil
    @exit_station = station
    @trips[:exit_station] = station
    in_journey?
  end
  
  def in_journey?
    if @entry_station == nil
    false
    else true
    end
  end
  
end

