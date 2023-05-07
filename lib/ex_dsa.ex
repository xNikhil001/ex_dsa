defmodule ExDsa do
  alias ExDsa.Impl.BinarySearch
  @spec search(list, any) :: :not_found | {:ok, integer}
  defdelegate search(list,key), to: BinarySearch
end
