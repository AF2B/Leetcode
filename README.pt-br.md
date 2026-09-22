[English](README.md) | [Português](README.pt-br.md) | [Русский](README.ru-ru.md)

# LeetCode em C++

![CI](https://github.com/AF2B/Leetcode/actions/workflows/ci.yml/badge.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![C++23](https://img.shields.io/badge/C%2B%2B-23-blue.svg)

Uma coleção de soluções do LeetCode escritas inteiramente em C++23. Todo
problema resolvido vem acompanhado de um teste unitário automatizado, e o
mesmo problema costuma ser resolvido por mais de um ângulo — força bruta,
otimizado, recursivo, entre outros — convivendo lado a lado nos mesmos
arquivos, com verificações de build, análise estática e formatação em toda
pull request.

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
      solution.hpp       # interface pública — uma função por abordagem
      solution.cpp       # implementação
      test.cpp           # testes Catch2 — um TEST_CASE por abordagem
  0101-0200/
    ...
```

Os problemas são agrupados em faixas de 100 para o repositório continuar
navegável bem além do problema #3000. Todo problema é uma única pasta com
exatamente três arquivos de código — nunca uma pasta por abordagem: quando um
problema é resolvido de mais de uma forma, cada abordagem é uma função (ou
método) separada no mesmo `solution.hpp`/`solution.cpp`, testada pelo seu
próprio `TEST_CASE` no mesmo `test.cpp`. O `README.md` do problema documenta
o problema em si (resumo do enunciado, link, dificuldade, tags), não as
abordagens, que ficam documentadas como comentários no código.

Todo problema precisa vir com teste — uma solução sem `test.cpp` cobrindo-a
não é considerada concluída.

Problemas de SQL não têm um equivalente significativo em C++ (o LeetCode
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

Requisitos: CMake ≥ 3.20 e um compilador C++23 (GCC ≥ 13 ou Clang ≥ 16).

```bash
cmake -S . -B build
cmake --build build --parallel
ctest --test-dir build --output-on-failure
```

## Integração contínua

Toda pull request roda três verificações:

1. **Build & test** — CMake + Catch2 contra o `test.cpp` de cada problema.
2. **Análise estática** — `clang-tidy` e `cppcheck`.
3. **Verificação de formatação** — `clang-format --dry-run --Werror`.

## Progresso

🚧 Este repositório está sendo migrado para C++23. As soluções existentes,
escritas anteriormente em outras linguagens (Clojure, Go, Python, Ruby,
Swift, TypeScript), estão sendo convertidas uma pull request por vez.

## Como contribuir

Veja [CONTRIBUTING.md](CONTRIBUTING.md) para a convenção de pastas, estilo de
commit e como adicionar um novo problema.

## Licença

MIT — veja [LICENSE](LICENSE).
