defmodule FlattenArrayV1 do
  @doc """
    Accept a list and return the list flattened without nil values.
  """

  @spec flatten(list) :: list
  def flatten(list) do
    list
    |> Enum.flat_map(fn x -> x end)
    |> Enum.reject(&is_nil/1)
  end
end
