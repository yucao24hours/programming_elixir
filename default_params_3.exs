defmodule Example3 do
  # デフォルト引数の宣言
	def func(p1, p2 \\ 123)

	def func(p1, p2) when is_list(p1) do
		IO.inspect ["1", p1, p2]
	end

	def func(p1, p2) do
		IO.inspect ["2", p1, p2]
	end
end
