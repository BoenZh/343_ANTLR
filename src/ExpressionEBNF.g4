grammar ExpressionEBNF;

// Lexer rules
VAR: 'A' | 'B' | 'C';
WS:  [ \n\t\r]+ -> skip;

// Grammar
program: 'begin' stmtList 'end';

stmtList: expr;

expr: term('+'|'-'|term)*;

term: factor('*'|'/'|factor)*;

factor:exp('**'|exp)*;

exp: '('expr')'  | VAR;