grammar Ambiguous;

VAR: 'A'|'B'|'C';
WS:  [ \n\t\r]+ -> skip;

program: 'begin' stmtList 'end';


stmtList: expr;

expr:expr '+'expr
        |expr '*'expr
        |'('expr')'
        |VAR;