This is a fork of the lean4 repository, but it serves as the development ground
for the Razor Programming Language. This is language is written in Lean and uses
many of the same primitive patterns as lean, however it aims to have:

- A much, **much** more accessible syntax than Lean, spiritually much more
  similar to Rust syntax than Lean syntax
- Mostly use monads behind the scenes, allowing users to think less
  in terms of how to use monads to program some behavior, and more
  in terms of the execution and data model of the language
- A series of built-in primitives that makes it substantially easier
  to formally prove statements about algorithms written in Razor
- Good tooling, including language server support, a debugger, syntax + semantic
  highlighting, built-in testing environment.
