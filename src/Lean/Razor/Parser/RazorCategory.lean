import Lean

open Lean Parser


/-!
# Razor parser category declarations
-/

declare_syntax_cat razor_decl
declare_syntax_cat razor_stmt
declare_syntax_cat razor_expr

initialize registerBuiltinDynamicParserAttribute `razor_decl_parser `razor_decl
initialize registerBuiltinDynamicParserAttribute `razor_stmt_parser `razor_stmt
initialize registerBuiltinDynamicParserAttribute `razor_expr_parser `razor_expr

def razorDeclParser (prec : Nat := 0) :=
  categoryParser `razor_decl prec

def razorExprParser (prec : Nat := 0) :=
  categoryParser `razor_expr prec

def razorStmtParser (prec : Nat := 0) :=
  categoryParser `razor_stmt prec
