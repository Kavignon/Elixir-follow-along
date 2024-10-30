defmodule FlattenArray2 do
  @doc """
    Accept a list and return the list flattened without nil values.
  """

  @spec flatten(list) :: list
  def flatten(list) do
    list
    |> List.flatten()
    |> Enum.reject(&is_nil/1)
  end
end
