class AssemblyLine
  def initialize(speed)
    @speed = speed
    @prod_per_hour = 221
    @rate_hash = {
      1 => 1.0,
      2 => 1.0,
      3 => 1.0,
      4 => 1.0,
      5 => 0.9,
      6 => 0.9,
      7 => 0.9,
      8 => 0.9,
      9 => 0.8,
      10 => 0.77
    }
  end

  def production_rate_per_hour
    @speed * @prod_per_hour * @rate_hash[@speed]
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end


end
