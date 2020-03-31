defmodule Fatorial do
    def fat(0), do: 1

    def fat(n) when n > 0 do
        n * fat(n-1)
    end

    def fat(_n) do
        try do
            raise "O argumento passado eh invalido (numero negativo)"
        rescue
            e in RuntimeError -> IO.puts "Erro: " <> e.message
        end
    end
end

{num, _} = IO.gets("Digite um numero: ") |> Integer.parse
IO.puts "Fatorial de #{num} = #{Fatorial.fat(num)}"