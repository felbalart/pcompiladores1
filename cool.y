%{
package coolc.parser;

%}

%output  "Parser.java"
%language "Java"


%define parser_class_name "Parser"
%define public

%code {

    public static String getTokenName(int t) {
        return yytname_[t-255];
    }

}

%token 		LOOP
%token 		NOT
%token 		CLASS
%token 		ELSE
%token 		WHILE
%token 		POOL
%token 		THEN
%token 		FI
%token 		IF
%token 		CASE
%token 		IN
%token 		ESAC
%token 		INHERITS
%token 		ISVOID
%token 		NEW
%token 		OF
%token 		LET
%token 		BOOL
%token 		TYPE
%token		ID
%token 		INT
%token 		EQUALS "="
%token 		PLUS "+"
%token 		TIMES "*"
%token 		MINUS "-"
%token 		SLASH "/"
%token 		LESSOREQUAL "<="
%token 		LESS "<"
%token 		ATSIGN "@"
%token 		TILDE "~"
%token 		QUEST "?"
%token 		EXCLAM "!"
%token 		LPARENT "("
%token 		RPARENT ")"
%token 		LSQUARE "["
%token 		RSQUARE "]"
%token 		LCURLY "{"
%token 		RCURLY "}"
%token 		SEMICOL ";"
%token 		COLON ":"
%token 		COMMA ","
%token 		ERROR
%token 		STRING
%token 		DOT "."
%token 		FARROW "=>"
%token 		BARROW "<-"



%%

expr
    : INT
    | expr "+" expr
    | ID "(" param_list ")"
    | "[" matrix "]"
    | ID
    ;

param_list
    : /* empty */ 
    | param_list "," expr
    ;

matrix
    : vector
    | matrix ";" vector
    ;

vector
    : expr
    | vector "," expr
    ;

%%