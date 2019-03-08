grammar q7;

VAR: 'A'|'B'|'C';
WS:  [ \n\t\r]+ -> skip;

program: 'begin' stmtList 'end';


stmtList: VAR '='expr;

expr:expr '*'expr
        |expr '+'expr
        |'('expr')'
        |VAR;