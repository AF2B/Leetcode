[English](README.md) | [Português](README.pt-br.md) | [Русский](README.ru-ru.md)

# LeetCode em OCaml

![CI](https://github.com/AF2B/Leetcode/actions/workflows/ci.yml/badge.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![OCaml](https://img.shields.io/badge/OCaml-5-orange.svg)

Uma coleção de soluções do LeetCode escritas inteiramente em OCaml. Todo
problema resolvido vem acompanhado de um teste unitário automatizado, e o
mesmo problema costuma ser resolvido por mais de um ângulo — força bruta,
otimizado, recursivo, entre outros — convivendo lado a lado nos mesmos
arquivos, com verificações de build, testes e formatação em toda pull
request.

## Por que várias abordagens por problema

Resolver um problema uma vez prova que você encontrou uma resposta.
Resolvê-lo de novo como uma linha de base de força bruta, de novo na versão
otimizada, de novo de forma recursiva (ou por qualquer outro ângulo possível)
prova que você entende *por que* a resposta funciona — e deixa uma
referência de como a mesma ideia se comporta sob restrições diferentes. Não é
uma exigência para todo problema, mas a estrutura já está pronta para isso
sempre que valer a pena.

## Estrutura do repositório

```
solutions/
  0001-0100/
    0001-two-sum/
      README.md         # resumo do enunciado, link, dificuldade, tags
      dune               # definição do executável de teste
      solution.mli       # interface pública
      solution.ml        # implementação
      test.ml            # testes Alcotest
  0101-0200/
    ...
```

Os problemas são agrupados em faixas de 100 para o repositório continuar
navegável bem além do problema #3000. Todo problema é uma única pasta com
exatamente quatro arquivos — nunca uma pasta por abordagem: quando um
problema é resolvido de mais de uma forma, cada abordagem é uma função
separada no mesmo `solution.mli`/`solution.ml`, testada pelo seu próprio caso
no mesmo `test.ml`. O `README.md` do problema documenta o problema em si
(resumo do enunciado, link, dificuldade, tags), não as abordagens, que ficam
documentadas como comentários OCamldoc em `solution.mli`.

Todo problema precisa vir com teste — uma solução sem `test.ml` cobrindo-a
não é considerada concluída.

Problemas de SQL não têm um equivalente significativo em OCaml (o LeetCode
espera uma query SQL, não um programa), então a pasta legada `sql/` é mantida
como está e fica fora do escopo desta migração.

## Convenção de commits

Todo commit é marcado com um emoji que descreve sua intenção:

| Emoji | Significado |
|---|---|
| 🟢 | Resolve um problema **fácil** |
| 🟡 | Resolve um problema **médio** |
| 🔴 | Resolve um problema **difícil** |
| 🐛 | Correção de bug |
| 📝 | Atualização de documentação |
| 🚀 | Melhoria de desempenho |
| ⚡️ | Refatoração |
| 🎨 | Formatação / organização estrutural |
| 🚧 | Trabalho em progresso |
| 🔧 | Tooling, build system ou mudança de CI |

## Build e testes locais

Requisitos: OCaml ≥ 5.0, [dune](https://dune.build) ≥ 3.0 e
[Alcotest](https://github.com/mirage/alcotest).

```bash
opam install . --deps-only --with-test
dune build @all
dune runtest
```

## Integração contínua

Toda pull request roda duas verificações:

1. **Build & test** — `dune build @all` e `dune runtest` contra o `test.ml`
   de cada problema, com o conjunto de warnings do dev profile tratado como
   erro (substituindo um linter separado).
2. **Verificação de formatação** — `dune build @fmt`.

## Progresso

🚧 Este repositório está sendo migrado para OCaml. As soluções existentes,
escritas anteriormente em outras linguagens (Clojure, Go, Python, Ruby,
Swift, TypeScript), estão sendo convertidas uma pull request por vez.

## Como contribuir

Veja [CONTRIBUTING.md](CONTRIBUTING.md) para a convenção de pastas, estilo de
commit e como adicionar um novo problema.

## Licença

MIT — veja [LICENSE](LICENSE).
