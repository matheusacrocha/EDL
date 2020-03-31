{inicio, _} = IO.gets("Digite o numero inicial: ") |> Integer.parse
{fim, _} = IO.gets("Digite o numero final: ") |> Integer.parse
if inicio > fim do
    IO.puts "Erro: #{inicio} > #{fim}; nao foi possivel criar a lista"
else
    lista = Enum.to_list(inicio..fim)
    IO.puts "Lista criada: "
    IO.inspect lista
    pares = for n <- lista, rem(n, 2) == 0, do: n
    IO.puts "Lista contendo somente numeros pares: "
    IO.inspect pares
end