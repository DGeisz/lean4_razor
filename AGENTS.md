# Contribution Guide

## Project Context

The purpose of this project is to build the Razor language (see Readme.md for more details).
However, we're starting out by building this language inside of the lean 4 repo because Razor
is built on top of lean4, and the patterns we use to write Razor will closely mimic those
that lean4 uses to implement itself.

As such, we will only write new code in the Razor subdirectory (src/Lean/Razor). Unless you're
_explicitly instructed_, do not modify code or create new files outside of this directory.

## Additional instructions

You will often be asked questions about the Lean Parser and the Lean Elaborator.

The parser is defined in src/Lean/Parser/_ and the elaboration logic in src/Lean/Elab/_.

Those should be your starting point for such questions.
