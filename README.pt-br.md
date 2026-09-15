[English](README.md) | [Português](README.pt-br.md) | [Русский](README.ru-ru.md)

# LeetCode em C++

![CI](https://github.com/AF2B/Leetcode/actions/workflows/ci.yml/badge.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![C++23](https://img.shields.io/badge/C%2B%2B-23-blue.svg)

Uma coleção de soluções do LeetCode escritas inteiramente em C++ moderno (C++23). O mesmo problema costuma ser resolvido de mais de um ângulo — a abordagem otimizada, força bruta, orientação a objetos, estilo funcional e design patterns clássicos — com verificações automáticas de build, análise estática, formatação e testes em toda pull request.

## Por que várias abordagens por problema

Resolver um problema uma vez prova que você encontrou uma resposta. Resolvê-lo de novo como uma hierarquia de classes, de novo com `std::ranges` e sem estado mutável, e de novo por trás de um design pattern prova que você entende *por que* a resposta funciona — além de deixar uma referência de como a mesma ideia se comporta sob restrições diferentes.

## Estrutura do repositório

```
solutions/
  0001-0100/
    0001-two-sum/
      README.md            # enunciado resumido, tags, complexidade por abordagem
      optimized/
        solution.hpp
        solution.cpp
        test.cpp
      brute-force/
      oop/
      functional/
      design-patterns/
  0101-0200/
    ...
```

Os problemas são agrupados em faixas de 100 para o repositório continuar navegável mesmo passando do problema #3000. Cada pasta de problema documenta a complexidade de tempo/espaço de cada abordagem presente. Apenas `optimized/` é obrigatória — as demais abordagens são adicionadas aos poucos.

Problemas de SQL não têm um equivalente relevante em C++ (o LeetCode espera uma query SQL, não um programa), então a pasta legada `sql/` permanece como está, fora do escopo da migração para C++.

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

Requisitos: CMake ≥ 3.20 e um compilador C++23 (GCC ≥ 13 ou Clang ≥ 16).

```bash
cmake -S . -B build
cmake --build build
ctest --test-dir build --output-on-failure
```

## Integração contínua

Toda pull request roda três verificações:

1. **Build** — compila cada solução com `-Wall -Wextra -Wpedantic -Werror`.
2. **Análise estática** — `clang-tidy` e `cppcheck`.
3. **Verificação de formatação** — `clang-format --dry-run --Werror`.

## Progresso

🚧 Este repositório está sendo migrado para C++. As soluções que antes existiam em outras linguagens estão sendo convertidas uma pull request por vez.

## Como contribuir

Veja [CONTRIBUTING.md](CONTRIBUTING.md) para a convenção de pastas, o padrão de commits e como adicionar um novo problema.

## Licença

MIT — veja [LICENSE](LICENSE).
