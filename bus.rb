class Bus

  attr_accessor(:bus_number, :destination,:drive_method,:passengers)

  def initialize (bus_number, destination, drive_method)
    @passengers = []
    @bus_number = bus_number
    @destination = destination
    @drive_method = drive_method
  end  

  def how_many_passengers
    return @passengers.count()
  end

  def pick_up(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty_the_bus()
    @passengers.clear()
  end
end



