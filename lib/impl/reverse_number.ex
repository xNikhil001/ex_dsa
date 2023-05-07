defmodule ExDsa.Impl.ReverseNumber do
  def reverse_number(number), do: reverse_number(number,0)

  def reverse_number(0,acc), do: acc

  def reverse_number(number,acc) do
    reverse_number(div(number,10), (acc * 10) + rem(number,10))
  end

end
