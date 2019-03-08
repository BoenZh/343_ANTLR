grammar Example31;

// Lexer rules
VAR: 'A' | 'B' | 'C';
WS:  [ \n\t\r]+ -> skip;

// Grammar
program: 'if'?stmtList 'begin' stmtList 'end'|  'while'?stmtList 'begin' stmtList 'end'|'begin' stmtList 'end';


stmtList: stmt
 | stmt ';' stmtList
 | stmtList ';';





stmt:   VAR '=' expr
    |VAR '=='expr
    |VAR '>'expr
    |VAR '<'expr;
expr:   VAR '+' VAR
      | VAR '-' VAR

      | VAR
      ;
