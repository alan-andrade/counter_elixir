defmodule CounterApiTest do
  use ExUnit.Case

  test "use counter through API" do
    pid = Counter.start(0)
    assert Counter.state(pid) == 0
    assert Counter.tick(pid) == 1
    assert Counter.tick(pid) == 2
  end
end
