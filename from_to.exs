# An example of ListAndRecursion at p.74
defmodule MyList do
  def span(from, to), do: span(from, to, [])
  defp span(from, from, acc), do: [from|acc]
  defp span(from, to, acc) when from < to, do: span(from, to - 1, [to | acc])
end
