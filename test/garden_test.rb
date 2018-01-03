require 'minitest/autorun'
require 'minitest/pride'
require './lib/garden'

class GardenFunTest < Minitest::Test
  
  def test_it_exists
    garden = GardenFun.new
    
    assert_instance_of Garden, garden
  end
  
  def test_it_has_rows
    garden = GardenFun.new({carrots: 12, beets: 20})
    
    assert_equal 12, garden.rows[:carrots]
  end
  
end