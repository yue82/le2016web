%option noyywrap
%{
#include <stdio.h>
#include <string.h>
%}

%%
[ \t\n]+ {
}

"int" {
  printf("TYPENAME ");
}

"double" {
  printf("TYPENAME ");
}

"if" {
  printf("IF ");
}

[a-zA-X_][a-zA-Z0-9]* {
  printf("IDENTIFIER ");
}

0|([+-]?[1-9][0-9]*) {
  printf("INTEGER ");
}

"=" {
  printf("OPERATOR ");
}

"+" {
  printf("OPERATOR ");
}

"-" {
  printf("OPERATOR ");
}

"*" {
  printf("OPERATOR ");
}

"/" {
  printf("OPERATOR ");
}

"<" {
  printf("OPERATOR ");
}

">" {
  printf("OPERATOR ");
}

")" {
  printf("RIGHT_PARENTHESIS ");
}

"(" {
  printf("LEFT_PARENTHESIS ");
}

"}" {
  printf("RIGHT_BRACE ");
}

"{" {
  printf("LEFT_BRACE ");
}

";" {
  printf("SEMICOLON ");
}

"," {
  printf("COMMA ");
}
%%

int main() {
  yylex();
  printf("\n");
  return 0;
}
