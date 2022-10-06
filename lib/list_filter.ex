defmodule ListFilter do

  require Integer

  def call(list) do
    count_odds(list)
  end

  defp count_odds(list) do
    list
    |> Enum.filter(fn x -> Integer.parse(x) != :error end)
    |> Enum.map(fn x -> String.to_integer(x) end)
    |> Enum.count(fn x -> Integer.is_odd(x) end)
  end


end
