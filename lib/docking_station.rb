class DockingStation
  attr_reader :bike_dock

  def initialize
    @bike_dock = []
  end

  def release_bike
    bike = Bike.new
  end

  def dock_bike(bike)
    @bike_dock << bike
  end
end

class Bike
  def working?

  end
  # bike.working?
end
