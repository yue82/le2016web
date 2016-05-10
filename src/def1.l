%option noyywrap
%{
#include <stdio.h>
#include <string.h>
%}

%%
[ \t\n]+ {
}

"if" {
  printf("IF ");
}

[a-zA-Z]+ {
  printf("IDENTIFIER ");
}

"int" {
  printf("TYPENAME ");
}

"double" {
  printf("TYPENAME ");
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
