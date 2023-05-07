defmodule ExDsa.Impl.BinarySearch do
  @spec search(list) :: :not_found
  def search([]), do: :not_found

  @spec search(list, integer) :: :not_found | {:ok, integer}
  def search(list,key) do
    search(list,key,0,Kernel.length(list) - 1)
  end

  @spec search(list,integer, integer, integer) :: :not_found | {:ok, integer}
  def search(_,_,first,last) when first > last, do: :not_found

  def search(list,key,first,last) do
    mid = round((first + last)/2)

    cond do
      key > Enum.at(list,mid) -> search(list,key,mid + 1, last)
      key < Enum.at(list,mid) -> search(list,key,first, mid - 1)
      true -> {:ok, mid}
    end
  end
end
