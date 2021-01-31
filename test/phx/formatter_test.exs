defmodule Phx.FormatterTest do
  use ExUnit.Case

  alias Phx.Formatter

  doctest Formatter

  describe "Formatter.hello/0" do
    test "returns a greeting" do
      assert Formatter.hello() == "Hello!"
    end
  end
end
