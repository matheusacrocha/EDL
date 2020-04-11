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
- Compilada em *bytecode* com o comando `elixirc nome-do-programa.ex`, gerando um arquivo `.beam` ou compilada na memória com o comando `elixir nome-do-programa.exs`. O Elixir trata as duas extensões da mesma maneira, a diferença é que `.ex` são feitos para serem compilados (assim gerando o *bytecode* `.beam` em disco, e não somente na memória) e `.exs` são utilizados para *scripting*;
- Concorrente;
- De alto nível;
- De tipagem forte;
- De propósito geral.

## Exemplos

Alguns dos exemplos abaixo utilizarão o IEx, o Shell Interativo do Elixir:

### O clássico Hello World!

```elixir
iex(1)> IO.puts "Hello World!"
Hello World!
:ok
```

### Atoms

*Atom* é um tipo de variável constante cujo valor é o seu próprio nome. Os booleans `true` e `false` também são atoms no Elixir:

```elixir
iex(1)> :atom
:atom
iex(2)> true == :true
true
iex(3)> is_atom(false)
true   
```

## Referências

https://en.wikipedia.org/wiki/Elixir_(programming_language)<br/>
https://elixir-lang.org/<br/>
https://www.quora.com/What-big-projects-use-Elixir<br/>
https://www.welcometothejungle.com/en/articles/btc-elixir-jose-valim<br/>
https://www.sitepoint.com/an-interview-with-elixir-creator-jose-valim/