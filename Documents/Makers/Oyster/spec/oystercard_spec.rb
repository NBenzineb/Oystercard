require_relative '../lib/oystercard.rb'

describe Oystercard do
  it "shows user's balance"  do
    expect(subject.balance).to eq 0
  end
  it "adds money to the balance" do
    expect(subject.top_up(50)).to eq 50
  end
end