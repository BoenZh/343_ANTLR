grammar Expression;

// Lexer rules
VAR: 'A' | 'B' | 'C';
WS:  [ \n\t\r]+ -> skip;

// Grammar
program: 'begin' stmtList 'end';


stmtList: expr;

expr: expr '+' term
    | expr '-' term
    |term;

term: term '*' factor
      | term '/' factor
      |factor;

factor: exp '**' factor
        |exp;

exp: '('expr')'
    |VAR;



