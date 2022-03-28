require_relative '../lib/oystercard.rb'

describe Oystercard do


  it "shows user's balance"  do
    expect(subject.balance).to eq 0
  end
end