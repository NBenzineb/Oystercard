class Journey
attr_accessor :entry_station, :exit_station, :trips, 
 
def initialize(entry_station)
  @entry_station = entry_station
  @exit_station = nil
  @trips = {'Exit station' => @entry_station }
end

def end_journey(exit_station)
    @exit_station = exit_station
    @trip['Exit station'] = @exit_station
end

end
