defmodule ExDsa.Impl.Factorial do

  def factorial(0), do: :invalid_number

  def factorial(number), do: factorial(number,1)

  def factorial(1, acc), do: acc

  def factorial(number,acc) do
    factorial(number - 1, acc * number)
  end
end
