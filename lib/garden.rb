class Garden
  
  attr_reader :veggie_rows
  
  def initialize(veggie_rows={})
    @veggie_rows = veggie_rows
  end

  def total_veggies
    veggie_rows.values.sum
  end

end