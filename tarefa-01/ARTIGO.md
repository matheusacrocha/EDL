# Elixir

## Introdução

Elixir é uma linguagem de programação dinâmica, funcional, concorrente, de propósito geral e [*open source*](https://github.com/elixir-lang/elixir) criada pelo brasileiro José Valim. Desenvolvida como um projeto de pesquisa da empresa Plataformatec, seu objetivo era permitir maior extensibilidade e produtividade na máquina virtual Erlang (BEAM).

A máquina virtual Erlang é conhecida por executar sistemas em baixa latência, distribuídos e tolerantes a falhas. Além disso, Elixir permite que seus programadores também possam utilizar qualquer função do Erlang em seu código, sem custo em tempo de execução, mantendo assim a compatibilidade com a linguagem e sua máquina virtual.

Usada em diversas empresas, tais como: Discord, Pinterest, Brex, PagerDuty e Moz, Elixir obteve sucesso no desenvolvimento web e na construção de sistemas embarcados, além de suportar metaprogramação com macros e polimorfismo via protocolos.

## Origens e influências

José Valim, o criador da linguagem, era um desenvolvedor Ruby. Seu principal incentivo para a criação de Elixir foi a necessidade de ferramentas adequadas que permitissem a solução de problemas de concorrência, o que fez com que ele se interesasse pela máquina virtual Erlang.

Lançada oficialmente em 2012, Elixir é fortemente baseada em Erlang, usando sua máquina virtual para executar os programas. Além de Erlang e Ruby, Clojure também influenciou Elixir, com o uso de protocolos.

Por ser uma linguagem nova, Elixir ainda não influenciou na criação de outras linguagens. Entretanto, sua comunidade vem crescendo a cada ano, e junto com ela veio Phoenix: um framework de desenvolvimento web escrito em Elixir.

## Classificação

Elixir é uma linguagem:

- Funcional;
- Dinâmica;
- Compilada em *bytecode* com o comando `elixirc nome-do-arquivo.ex`, gerando um arquivo `.beam` ou compilada na memória com o comando `elixir nome-do-arquivo.exs`. O Elixir trata as duas extensões da mesma maneira, a diferença é que `.ex` são feitos para serem compilados (assim gerando o *bytecode* `.beam` em disco, e não somente na memória) e `.exs` são utilizados para *scripting*;
- Concorrente;
- De alto nível;
- De tipagem forte;
- De propósito geral.

## Funcionalidades: Guards e Pattern Matching

**Pattern Matching** é o ato de verificar se sequências específicas de dados apresentam um certo padrão em um conjunto de dados ou uma sequência de tokens.

Em Elixir, o operador `=` é chamado de *match operator*, sendo utilizado para fazer *pattern matching*. O operador `^`, chamado de *pin operator*, serve para fixarmos o valor de uma certa variável, ao invés de alterá-lo após o *match*.

Um simples exemplo de Pattern Matching, utilizando tuplas (alguns exemplos utilizarão o IEx, o Shell Interativo do Elixir):

```elixir
iex(1)> {nome, idade} = {"Matheus", 19}
{"Matheus", 19}
iex(2)> nome
"Matheus"
iex(3)> idade
19
iex(4)> {nome, idade} = {"Matheus", "dezenove"}
{"Matheus", "dezenove"}
iex(5)> nome
"Matheus"
iex(6)> idade
"dezenove"
iex(7)> {^nome, idade} = {"Lucas", 20}
** (MatchError) no match of right hand side value: {"Lucas", 20}
iex(7)> nome
"Matheus"
iex(8)> idade
"dezenove"
```

Outro exemplo, agora utilizando listas e o operador `|`, chamado de *cons operator*. A função deste operador é separar o primeiro elemento de uma lista (geralmente chamdo de *head*) dos restantes (chamados de *tail*):

```elixir
iex(1)> [head | tail] = ["Matheus", 19, "UERJ"]
["Matheus", 19, "UERJ"]
iex(2)> head
"Matheus"
iex(3)> tail
[19, "UERJ"]
```

## Exemplos

### O clássico Hello World!

```elixir
iex(1)> IO.puts "Hello World!"
Hello World!
:ok
```

### Atoms

*Atom* é um tipo de variável constante cujo valor é o seu próprio nome. Os booleans `true` e `false` também são atoms em Elixir:

```elixir
iex(1)> :atom
:atom
iex(2)> true == :true
true
iex(3)> is_atom(false)
true
```

### Funções anônimas

Funções anônimas em Elixir são como funções lambda em outras linguagens:

```elixir
iex(1)> somar = fn (a, b) -> a + b end
iex(2)> somar.(3, 7)
10
```

## Referências

https://en.wikipedia.org/wiki/Elixir_(programming_language)<br/>
https://elixir-lang.org/<br/>
https://www.quora.com/What-big-projects-use-Elixir<br/>
https://www.welcometothejungle.com/en/articles/btc-elixir-jose-valim<br/>
https://www.sitepoint.com/an-interview-with-elixir-creator-jose-valim/<br/>
https://hexdocs.pm/elixir/1.10.2/patterns-and-guards.html<br/>
https://en.wikipedia.org/wiki/Pattern_matching