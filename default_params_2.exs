defmodule Example2 do
  # ここを `foo(p1, p2 \\ 1)` にすると、デフォルト引数が 1 （だけど 1 じゃなくてもいいよ）になる。
  # そのため、foo(5,2) のようにしても下の foo 関数にはマッチしなくなる。
  def foo(p1, p2 = 1) do
    IO.inspect [p1, p2]
  end

  # コンパイル後にも以下のような警告が出る。
  # warning: this clause cannot match because a previous clause at line 2 always matches
  #   default_params_2.exs:6
  def foo(p1, 2) do
    IO.inspect ["2", p1, 2]
  end
end

