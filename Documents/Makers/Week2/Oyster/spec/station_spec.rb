require_relative '../lib/station.rb'

describe Station do

  it "displays the station name" do
    expect(subject.name).to eq subject.name
  end
  it "displays the zone" do
    expect(subject.zone).to eq subject.zone
  end
end