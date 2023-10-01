defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount / 100.0 * discount
  end

  def monthly_rate(hourly_rate, discount) do
    daily_rate = daily_rate(hourly_rate)
    monthly_rate_before_discount = daily_rate * 22.0
    monthly_rate_after_discount = apply_discount(monthly_rate_before_discount, discount)
    monthly_rate_final = ceil(monthly_rate_after_discount)
    monthly_rate_final
    # One line : daily_rate(hourly_rate) * 22.0 |> apply_discount(discount) |> ceil
  end

  def days_in_budget(budget, hourly_rate, discount) do
    after_discount = daily_rate(hourly_rate) |> apply_discount(discount)
    divide = budget / after_discount
    Float.floor(divide, 1)
  end
end

# Notes : |> is to re-use the previous value and ceil is a built-in function to round up the result
