#ifndef _BUILD_H_
#define _BUILD_H_

#include "alist.h"

class Expr;
class Stmt;
class BlockStmt;
class ForLoopStmt;

FnSymbol* build_if_expr(Expr* e, Expr* e1, Expr* e2 = NULL);
FnSymbol* build_let_expr(AList<Stmt>* decls, Expr* expr);
AList<Stmt>* build_while_do_block(Expr* cond, BlockStmt* body);
AList<Stmt>* build_do_while_block(Expr* cond, BlockStmt* body);
AList<Stmt>* build_for_block(ForLoopStmt* stmt);
AList<Stmt>* build_param_for(char* index, Expr* low, Expr* high, AList<Stmt>* stmts);

#endif
