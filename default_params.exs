defmodule Example do
  def foo(p1, p2) do
    IO.inspect ["hoge", p1, p2]
  end

  def foo(p1, p2 \\ 2, p3 \\ 3, p4) do
    IO.inspect [p1, p2, p3, p4]
  end

  def foo(p1, p2, p3, p4) do
    IO.inspect [p1, p2, p3, p4]
  end
end
