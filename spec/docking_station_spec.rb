# In spec/docking_station_spec.rb
require_relative "../lib/docking_station.rb"

describe DockingStation do

  it 'responds to release_bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to :release_bike
  end

  it 'expects bike to be working?' do
    bike = Bike.new
    expect(bike).to respond_to :working
  end

  it 'has a bike dock' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to :bikes_in_dock
  end

  it 'has dock bike command' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to :dock_bike
  end

  it 'can dock a bike' do
    docking_station = DockingStation.new
    dummy = double(:bike)
    docking_station.dock_bike dummy
    expect(docking_station.bikes_in_dock[0]).to eq(dummy)
  end

  it 'allows user to flag a broken bike' do
    ds = DockingStation.new
    ds.dock_bike double(:bike)
    ds.report_broken_bike
    expect(ds.bikes_in_dock[-1].working).to eq false
  end

  it 'will not release broken bike' do
    ds = DockingStation.new
    ds.dock_bike double(:bike)
    ds.report_broken_bike
    expect { ds.release_bike }.to raise_error('This bike is not working')
  end

  it 'raises error if you ask for a bike when there are no bikes' do
    ds = DockingStation.new
    expect { ds.release_bike }.to raise_error('There are no bikes') # expect whatever is done in the curly brackets to raise error
  end

  it 'raises error if you ask to dock a bike when the dock is full' do
    ds = DockingStation.new
    20.times{ ds.dock_bike(double(:bike)) }
    expect { ds.dock_bike(double(:bike)) }.to raise_error('Dock is full')
  end

end

describe Bike do

  it 'responds to working?' do
    bike = Bike.new
    expect(bike).to respond_to :working
  end
end
