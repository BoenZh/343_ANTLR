grammar Example31;

// Lexer rules
VAR: 'A' | 'B' | 'C';
WS:  [ \n\t\r]+ -> skip;

// Grammar
program: 'begin' stmtList 'end' ;
stmtList: stmt
    | stmt ';' stmtList ;
stmt:   VAR '=' expr ;
expr:   VAR '+' VAR
      | VAR '-' VAR
      | VAR
      ;
