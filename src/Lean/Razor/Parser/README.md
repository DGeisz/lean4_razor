# Overview

This directory defines the parser for the Razor language.

Here are a couple high level points about how our parser works:

- The three basic units of Razor are:
  1. Declarations
  - These are top level declarations in a Razor file. These include files,
    structs, enums, traits, implementations, etc
  2. Statements
  - These are the sequential commands inside of fn implementation and blocks.
    (ie, let declarations, return, break, continue, etc)
  3. Expressions
  - These are the actual units of computations. In addition to basic variables
    and infix arithmetic (addition, subtraction, etc), this also includes if/else
    blocks, for loops, match statements, etc, as these may produce a value.
- Like with Lean, we have basic category parsers for each of these three basic units
  defined in `RazorCategory.lean`.
  - Also like in Lean, we've also defined the attributes `razor_decl_parser`, `razor_stmt_parser`,
    and `razor_expr_parser`. By tagging parsers with these attributes, we allow these parsers
    to be used by our category parsers (`razorDeclParser`, `razorExprParser`, and `razorStmtParser`)
- The Razor Language doesn't use normal Lean terms/commands. As such,
  we should _never_ use `commandParser` or `termParser` defined in src/Lean/Parser for any of our parsers.
