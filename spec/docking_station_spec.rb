# In spec/docking_station_spec.rb
require_relative "../lib/docking_station.rb"

describe DockingStation do

  it 'responds to release_bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to :release_bike
  end

  it 'expects bike to be working?' do
    bike = Bike.new
    expect(bike).to respond_to :working?
  end
end

describe Bike do

  it "responds to working?" do
    bike = Bike.new
    expect(bike).to respond_to :working?
  end
end
