require_relative '../lib/oystercard.rb'

describe Oystercard do
    let(:station){double :station}
 
  it "shows user's balance"  do
    expect(subject.balance).to eq subject.balance
  end
  it "adds money to the balance" do
    allow(subject).to receive(:balance).and_return 5
    expect(subject.top_up(50)).to eq 55
  end
  it "warn if top up is over £90" do
    expect{subject.top_up(100)}.to raise_error 'Limit is £90'
  end
  it "deducts the fare from the balance" do
    allow(subject).to receive(:balance).and_return 5
    expect(subject.deduct(MIN_FARE)).to eq 4
  end
  it "should touch in" do 
   subject.top_up(2)
    expect(subject.touch_in(station)).to eq true
  end
  it "should touch out" do
    subject.touch_in(station)
    
  expect( subject.touch_out).to eq false
  end
  it "the oyster card should be in use" do
    subject.touch_in(station)
    expect(subject.in_journey?).to eq true
  end
  it "should raise an error if the user tries to touch in with insufficient funds" do
    allow(subject).to receive(:balance).and_return 0
    expect{subject.touch_in(station)}.to raise_error "There are insufficient funds"
  end
  it "should deduct money from balance when touching out" do
    subject.touch_in(station)
    expect {subject.touch_out}.to change{subject.balance}.by(-MIN_FARE)
  end
  it "should save entry station" do
    subject.touch_in(station)
    expect(subject.entry_station).to eq station
  end
  it "should have no entry station saved on touch out" do
    subject.touch_in(station)
    subject.touch_out
    expect(subject.entry_station).to be_nil
  end
end