%option noyywrap
%{
#include <stdlib.h>
#include <string.h>
#include "y.tab.h"
extern int yylval;
%}

%%
[ \t]+ {}
"if" {
  yylval = copy_lex();
  return IF;
}
"int" {
  yylval = copy_lex();
  return INT;
}
"double" {
  yylval = copy_lex();
  return DOUBLE;
}
[a-zA-X_][a-zA-Z0-9]* {
  yylval = copy_lex();
  return IDENTIFIER;
}
(([0-9]+"."[0-9]*)|("."[0-9]+))([eE][-+]?[0-9]+) {
  yylval = copy_lex();
  return REAL;
 }
0|([+-]?[1-9][0-9]*) {
  yylval = copy_lex();
  return INTEGER;
}
"=" {
  yylval = copy_lex();
  return ASSIGN;
}
"==" {
  yylval = copy_lex();
  return EQUAL;
}
"+" {
  yylval = copy_lex();
  return ADD;
}
"-" {
  yylval = copy_lex();
  return SUB;
}
")" {
  yylval = copy_lex();
  return RIGHT_PARENTHESIS;
}
"(" {
  yylval = copy_lex();
  return LEFT_PARENTHESIS;
}
"}" {
  yylval = copy_lex();
  return RIGHT_BRACE;
}
"{" {
  yylval = copy_lex();
  return LEFT_BRACE;
}
";" {
  yylval = copy_lex();
  return SEMICOLON;
}
"," {
  yylval = copy_lex();
  return COMMA;
}
%%

int copy_lex()
{
  static char Buffer[10000];
  static char *Pointer = Buffer;
  int p = (int)Pointer;
  strcpy(Pointer, yytext);
  Pointer += strlen(yytext) + 1;
  return p;
}
