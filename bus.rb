class Bus

  attr_reader :route, :last_stop
  attr_accessor :passengers

  def initialize(route_number, last_stop)
    @route = route_number
    @last_stop = last_stop
    @passengers = []
  end


  def drive()
    return "Brum brum"
  end

  def count()
    return @passengers.length()
  end

  def pick_up(person)
    @passengers.push(person)
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty_passengers(destination)
    if destination == @last_stop
      @passengers.clear()
    end
  end

  def pick_up_all(bus_stop)
    for person in bus_stop.queue()
      @passengers.push(person)
    end
  end


end
