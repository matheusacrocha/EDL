defmodule Numeros do
    def main do
        for num <- 1..50, do: spawn fn -> IO.puts "#{num}" end
    end
end

Numeros.main