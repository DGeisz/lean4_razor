import Lean
import Lean.Razor.Parser.RazorCategory
import Lean.Razor.Parser.Conditional -- for `razorStmtBlock`

open Lean Parser

/-- A single match case of the form `case pat => rhs`. The right-hand side can be
an expression or a statement block. -/
private def razorMatchCase := leading_parser
  "case " >> razorExprParser >> ppSpace >> "=> " >> (razorExprParser <|> razorStmtBlock)

/-- Match cases separated by commas and contained inside braces. Allows trailing comma. -/
private def razorMatchCases :=
  leading_parser sepByIndent razorMatchCase ", " (allowTrailingSep := true)

/-- A Rust-like match expression.
```
match expr {
  case pat => expr_or_block,
  case _ => expr_or_block,
}
```
-/
@[razor_expr_parser] def matchExpr := leading_parser:leadPrec
  "match " >> razorExprParser >> ppSpace >>
  "{" >> razorMatchCases >> ppDedent (ppLine >> "}")
