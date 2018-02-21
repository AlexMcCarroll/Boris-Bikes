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
    fail 'This bike is not working' unless broken?
    bike = @bikes_in_dock.pop

  end

  def report_broken_bike
    # puts "Is bike broken? enter yes or no"
    # user_input = gets.chomp
    @bikes_in_dock[-1].is_broken # if user_input == "yes"
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

    def broken?
      @bikes_in_dock[-1].is_working?
    end
end


class Bike
  attr_accessor :working

  def initialize
    @working = true
  end

  def is_broken
    @working = false
  end

  def is_working?
    @working
  end
end
