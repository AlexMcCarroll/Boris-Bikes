class DockingStation
  attr_reader :bikes_in_dock

  def initialize
    @bikes_in_dock = []
  end

  def release_bike
    fail 'There are no bikes' if @bikes_in_dock.count.zero? # guard statement - stops anything else running
    bike = Bike.new
  end

  def dock_bike(bike)
    fail 'Dock is full' if @bikes_in_dock.count == 20 # guard statement
    @bikes_in_dock << bike
  end
end

class Bike
  def working?

  end
  # bike.working?
end
