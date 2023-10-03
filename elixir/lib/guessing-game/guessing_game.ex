defmodule GuessingGame do
  def compare(secret_number, guess)
  def compare(secret_number, guess) when secret_number == guess, do: "Correct"
  def compare(secret_number, guess) when secret_number < guess and guess - secret_number = 1, do: "So close"
  def compare(secret_number, guess) when secret_number < guess, do: "Too high"
  def compare(secret_number, guess) when secret_number > guess and secret_number - guess = 1, do: "So close"
  def compare(secret_number, guess) when secret_number > guess, do: "Too low"
end
