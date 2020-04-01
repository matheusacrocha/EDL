inicio = IO.gets("Digite o numero inicial: ") |> String.trim |> String.to_integer # Nao converte float para int
{fim, _} = IO.gets("Digite o numero final: ") |> Integer.parse # Converte float para int
lista = Enum.to_list(inicio..fim)
IO.puts "Lista criada: "
IO.inspect lista
pares = for n <- lista, rem(n, 2) == 0, do: n
IO.puts "Lista contendo somente numeros pares: "
IO.inspect pares