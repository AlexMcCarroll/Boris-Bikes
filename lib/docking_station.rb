class DockingStation

  attr_reader :bikes_in_dock, :capacity
  # same as:
  # def show_capacity
  #   @capacity
  # end

  def initialize(capacity = 20)
    @bikes_in_dock = []
    @capacity = capacity
  end

  def release_bike
    fail 'There are no bikes' if empty? # guard statement - stops anything else running
    bike = Bike.new
  end

  def dock_bike(bike)
    fail 'Dock is full' if full? # guard statement
    @bikes_in_dock << bike
  end

  private
    def full?
      @bikes_in_dock.count == @capacity
    end

    def empty?
      @bikes_in_dock.count.zero?
    end
end


class Bike
  def working?

  end
  # bike.working?
end
