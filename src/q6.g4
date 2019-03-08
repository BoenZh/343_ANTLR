grammar q6;

VAR: 'A'|'B'|'C';
WS:  [ \n\t\r]+ -> skip;

program: 'begin' stmtList 'end';


stmtList: expr;

expr:expr '+'expr
        |<assoc=left>expr '*'expr
        |'('expr')'
        |VAR;