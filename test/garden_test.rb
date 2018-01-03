require 'minitest/autorun'
require 'minitest/pride'
require './lib/garden'

class GardenTest < Minitest::Test
  
  def test_it_exists
    garden = Garden.new

    assert_instance_of Garden, garden
  end
  
  def test_it_has_rows
    garden = Garden.new({carrots: 12, beets: 20})

    assert_equal 12, garden.veggie_rows[:carrots]
  end
  
  def test_total_veggies_calculates_total_number_of_veggies
    garden = Garden.new({carrots: 12, beets: 20})
    
    assert_equal 32, garden.total_veggies
  end
  
end