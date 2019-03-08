grammar q6R;

VAR: 'A'|'B'|'C';
WS:  [ \n\t\r]+ -> skip;

program: 'begin' stmtList 'end';


stmtList: expr;

expr:<assoc=right>expr '+'expr
        |expr '*'expr
        |'('expr')'
        |VAR;