require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")


class PersonTest < MiniTest::Test

  def setup()
    @person1 = Person.new("Cher", 42)
  end

  def test_has_name()
    assert_equal("Cher", @person1.name())
  end

  def test_has_age()
    assert_equal(42, @person1.age())
  end

end
