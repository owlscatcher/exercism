module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].to_s.upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    (ship_identifier =~ /OIL|GAS/) ? :A : :B
  end
end
