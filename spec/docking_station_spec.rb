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

  it 'has a bike dock' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to :bike_dock
  end

  it 'has dock' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to :dock_bike
  end

  it 'can dock a bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock_bike(bike)
    expect(docking_station.bike_dock[0]).to eq(bike)
  end

  it 'raises error if you ask for a bike when there are no bikes' do
    ds = DockingStation.new
    expect { ds.release_bike }.to raise_error('There are no bikes') # expect whatever is done in the curly brackets to raise error
  end

end

describe Bike do

  it "responds to working?" do
    bike = Bike.new
    expect(bike).to respond_to :working?
  end
end
