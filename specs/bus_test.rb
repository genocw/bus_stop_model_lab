require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../busstop.rb")
require_relative("../person.rb")


class BusTest < MiniTest::Test


  def setup()
    @bus22 = Bus.new(22, "Ocean Terminal")
  end


  def test_has_route_number()
    assert_equal(22, @bus22.route())
  end

  def test_has_last_stop()
    assert_equal("Ocean Terminal", @bus22.last_stop())
  end

  def test_bus_can_drive()
    assert_equal("Brum brum", @bus22.drive())
  end

  def test_count()
    assert_equal(0, @bus22.count())
  end


  def test_pick_up_person()
    person = Person.new("David Bowie", 65)
    @bus22.pick_up(person)
    assert_equal(1, @bus22.count())
  end

  def test_drop_off_person()
    person = Person.new("David Bowie", 65)
    @bus22.drop_off(person)
    assert_equal(0, @bus22.count())
  end

  def test_empty_passengers()
    @bus22.empty_passengers("Ocean Terminal")
    assert_equal(0, @bus22.count())
  end

  def test_pick_up_all()
    person = Person.new("Prince", 44)
    bus_stop = BusStop.new("Royal Mile")
    bus_stop.add_person(person)
    @bus22.pick_up_all(bus_stop)
    assert_equal(1, @bus22.count())
  end


end
