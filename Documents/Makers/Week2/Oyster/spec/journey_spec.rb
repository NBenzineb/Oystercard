require_relative '../lib/journey.rb'
require_relative '../lib/oystercard.rb'
describe Journey do
  let(:station1){double :station}
  let(:station2){double :station}
   
   it "checks that touch in & touch out adds stations to trips" do
        subject.touch_in(station1) 
        subject.touch_out(station2)
        expect(subject.trips).to include(:entry_station => station1, :exit_station => station2)
      end  
 
end