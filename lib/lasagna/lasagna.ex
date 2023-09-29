defmodule Lasagna do

  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(spent_time) do
     expected_minutes_in_oven() - spent_time
  end

  def preparation_time_in_minutes(layer_count) do
    layer_count * 2
  end

  def total_time_in_minutes(layer_count, spent_time) do
    preparation_time_in_minutes(layer_count) + spent_time
  end

  def alarm() do
    "Ding!"
  end
end
