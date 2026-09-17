[English](README.md) | [Português](README.pt-br.md) | [Русский](README.ru-ru.md)

# LeetCode em Haskell

![CI](https://github.com/AF2B/Leetcode/actions/workflows/ci.yml/badge.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Haskell](https://img.shields.io/badge/Haskell-GHC%209.10-blue.svg)

Uma coleção de soluções do LeetCode escritas inteiramente em Haskell. O mesmo problema costuma ser resolvido de mais de um ângulo — a abordagem otimizada, força bruta, um design orientado a typeclasses e design patterns clássicos codificados com o sistema de tipos do Haskell — com verificações automáticas de build, análise estática, formatação e testes em toda pull request.

## Por que várias abordagens por problema

Resolver um problema uma vez prova que você encontrou uma resposta. Resolvê-lo de novo como uma linha de base de força bruta, de novo priorizando composição pura orientada a typeclasses, e de novo por trás de um design pattern clássico prova que você entende *por que* a resposta funciona — além de deixar uma referência de como a mesma ideia se comporta sob restrições diferentes.

## Estrutura do repositório

```
solutions/
  R0001_0100/
    P0001_TwoSum/
      README.md            # enunciado resumido, tags, complexidade por abordagem
      Optimized/
        Solution.hs
        SolutionSpec.hs
      BruteForce/
      Functional/
      DesignPatterns/
  R0101_0200/
    ...
```

Os problemas são agrupados em faixas de 100 para o repositório continuar navegável mesmo passando do problema #3000. Nomes de pasta também funcionam como componentes de nome de módulo Haskell, por isso usam segmentos em `PascalCase`/`Snake_Case` em vez dos hífens que os próprios slugs do LeetCode usam. Cada pasta de problema documenta a complexidade de tempo/espaço de cada abordagem presente. Apenas `Optimized/` é obrigatória — as demais abordagens são adicionadas aos poucos. O `hspec-discover` encontra automaticamente todo arquivo `*Spec.hs` dentro de `solutions/`, então os testes de um problema novo já rodam no CI sem registro manual.

Problemas de SQL não têm um equivalente relevante em Haskell (o LeetCode espera uma query SQL, não um programa), então a pasta legada `sql/` permanece como está, fora do escopo da migração para Haskell.

## Padrão de commits

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
| 🔧 | Ferramental, build system ou CI |

## Build e testes locais

Requisitos: GHC ≥ 9.10 e Cabal ≥ 3.16 (uma instalação via [ghcup](https://www.haskell.org/ghcup/) cobre os dois), além do [hpack](https://github.com/sol/hpack).

```bash
hpack
cabal build --enable-tests
cabal test
```

## Integração contínua

Toda pull request roda três verificações:

1. **Build & testes** — `cabal build`/`cabal test` contra cada solução e seu spec Hspec.
2. **Análise estática** — `hlint`.
3. **Verificação de formatação** — `fourmolu --mode check`.

## Progresso

🚧 Este repositório está sendo migrado para Haskell. As soluções que antes existiam em outras linguagens estão sendo convertidas uma pull request por vez.

## Como contribuir

Veja [CONTRIBUTING.md](CONTRIBUTING.md) para a convenção de pastas, o padrão de commits e como adicionar um novo problema.

## Licença

MIT — veja [LICENSE](LICENSE).
