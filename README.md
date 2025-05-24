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

# Roadmap

During initial development, we'll be working directly in a fork of lean.

Eventually we will move Razor into it's own repo outside of the lean repo.

The reason we have this here for the time being is that much of the code that's
required to write Razor will be _very_ similar to Lean's own code. As such,
it will be very useful as a reference to understand how we ought to build different patterns.

# Code Organization

The main Razor implementation lives in `src/Lean/Razor/*`
