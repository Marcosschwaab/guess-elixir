defmodule Guess do
use Application

  def start(_,_) do
    run()
    {:ok, self()}
  end
  
  def run() do
    IO.puts("Let's play Guess the Number")
    IO.gets("Pick a dificult level 1, 2 or 3):")
    |> Integer.parse()
    |> parse_input()
    |> IO.inspect()
  end

  def parse_input(data) do
    if data == :error do
      IO.puts("Invalid Level!")
      run()
    else
      {num,_} = data
      num
    end
  end
end

