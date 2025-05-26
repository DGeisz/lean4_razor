import Lean
-- import Lean.Razor.Parser.RazorCategory

open Lean Parser

/-- A block of Razor statements delimited by braces. -/
def razorStmtBlock := leading_parser
  "{" >> sepByIndentSemicolon razorStmtParser >> ppDedent (ppLine >> "}")

/-- `else if` branch for conditional expressions. -/
def razorElseIf := leading_parser
  ppDedent ppSpace >> "else if " >> razorExprParser >> ppSpace >> razorStmtBlock

/-- `else` branch for conditional expressions. -/
def razorElse := leading_parser
  ppDedent ppSpace >> "else " >> razorStmtBlock

/-- Conditional expression with optional `else if` and `else` branches. -/
@[razor_expr_parser] def conditional := leading_parser:leadPrec
  "if " >> razorExprParser >> ppSpace >> razorStmtBlock >>
  many razorElseIf >>
  optional razorElse
