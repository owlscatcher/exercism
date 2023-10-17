class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons)
    wagons
  end

  def self.fix_list_of_wagons((penultimate, last, first, *rest), missing_wagons)
    [first, *missing_wagons, *rest, penultimate, last]
  end

  def self.add_missing_stops(route_hash, **stops)
    { **route_hash, stops: stops.values }
  end

  def self.extend_route_information(route, more_route_information)
    { **route, **more_route_information }
  end
end
