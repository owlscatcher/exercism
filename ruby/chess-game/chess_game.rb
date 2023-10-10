module Chess
  RANKS = (1..8) 
  FILES = ('A'..'H')

  def self.valid_square?(rank, file)
    true if RANKS.include? rank and FILES.include? file

    false
  end

  def self.nick_name(first_name, last_name)
    "#{first_name[..1]}#{last_name[-2..]}".upcase 
  end

  def self.move_message(first_name, last_name, square)
    nick = self.nick_name(first_name, last_name)
    rank = square[1]
    file = square[0]

    if self.valid_square?(rank, file)
      "#{nick} moved to #{square}"
    else
      "#{nick} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
