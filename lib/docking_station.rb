class DockingStation
  attr_reader :bike_dock

  def initialize
    @bike_dock = []
  end

  def release_bike
    fail 'There are no bikes' if @bike_dock.count.zero? # guard statement - stops anything else running
    bike = Bike.new
  end

  def dock_bike(bike)
    fail 'Dock is full' if @bike_dock.count == 1 # guard statement
    @bike_dock << bike
  end
end

class Bike
  def working?

  end
  # bike.working?
end
