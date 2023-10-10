module SavingsAccount
  def self.interest_rate(balance)
    return 3.213 if balance.negative?
    return 0.5 if (0...1000).include? balance
    return 1.621 if (1000...5000).include? balance
    return 2.475
  end

  def self.annual_balance_update(balance)
    balance + (balance / 100 * self.interest_rate(balance))
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    expected_years = 0

    until current_balance > desired_balance
      current_balance = annual_balance_update(current_balance)
      expected_years += 1
    end

    expected_years
  end
end
