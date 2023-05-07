defmodule ExDsa.Impl.ReverseList do

  def reverse(list), do: reverse(list,[])

  def reverse([],acc), do: acc

  def reverse([h | t],acc) do
    reverse(t , [h | acc])
  end
end
