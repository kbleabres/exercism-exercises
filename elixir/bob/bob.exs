defmodule Bob do
  def hey(input) do
    cond do
       is_asking?(input)    -> "Sure."
       is_shouting?(input)  -> "Whoa, chill out!"
       is_silent?(input)    -> "Fine. Be that way!"
       true                 -> "Whatever."

    end
  end

  def is_asking?(input) do
    String.ends_with?(input, "?")
  end

  def is_shouting?(input) do
    String.match?(input, ~r/^[^a-z]*[^\s][^\d*]$/)
  end

  def is_silent?(input) do
    String.strip(input) == ""
  end
end
