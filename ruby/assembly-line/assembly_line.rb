class AssemblyLine
  def initialize(speed)
    @speed = speed
    @prod_per_hour = 221
  end

  def production_rate_per_hour
    @speed * @prod_per_hour
  end

  def working_items_per_minute

  end
end
