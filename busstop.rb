class BusStop

  attr_reader :name
  attr_accessor :queue

  def initialize(name)
    @name = name
    @queue = []
  end


  def add_person(person)
    @queue.push(person)
  end

end
