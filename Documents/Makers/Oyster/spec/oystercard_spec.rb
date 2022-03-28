require_relative '../lib/oystercard.rb'

describe Oystercard do
  it "shows user's balance"  do
    expect(subject.balance).to eq 0
  end
  it "adds money to the balance" do
    expect(subject.top_up(50)).to eq 50
  end

  it "warn if top up is over £90" do
    expect{subject.top_up(100)}.to raise_error 'Limit is £90'
  end
  it "deducts the fare from the balance" do
    subject.top_up(50)
    expect(subject.deduct(2)).to eq 48
  end

  it "should touch in" do 
    expect(subject.touch_in).to eq true
  end

  it "should touch out" do
    expect(subject.touch_out).to eq false
  end

  it "the oyster card should be in use" do
    expect(subject.in_journey?).to eq true
  end

end