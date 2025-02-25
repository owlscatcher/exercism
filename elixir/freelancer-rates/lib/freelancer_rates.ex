defmodule FreelancerRates do
  @ballable_days_per_month 22
  @hour_per_work_day 8.0

  def daily_rate(hourly_rate),
    do: hourly_rate * @hour_per_work_day

  def apply_discount(before_discount, discount),
    do: before_discount * to_coeff(discount)

  def monthly_rate(hourly_rate, discount) do
    (daily_rate(hourly_rate) * @ballable_days_per_month)
    |> apply_discount(discount)
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    hourly_rate
    |> daily_rate()
    |> apply_discount(discount)
    |> calculate_available_days(budget)
    |> Float.floor(1)
  end

  defp to_coeff(value), do: (100 - value) / 100.0

  defp calculate_available_days(discounted_day_rate, budget),
    do: budget / discounted_day_rate * 1.0
end
