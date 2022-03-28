class Oystercard
attr_reader :balance
LIMIT = 90
  def initialize
  @balance = 0
  
  end
  def top_up(money)
    if balance + money < LIMIT 
    @balance = money + balance
    else raise "Limit is £#{LIMIT}"
   end
  end
end