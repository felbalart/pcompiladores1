%{
package coolc.parser;
import coolc.ast.*;

%}

%output  "coolc/parser/Parser.java"
%language "Java"


%define parser_class_name "Parser"
%define public

%code {

    private AstNode root;
    public AstNode getRoot() {
        return root;
    }


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



%define stype "AstNode"

%type <AstNode> prueba


%%

prueba
	: NOT ID ";" { $$ = new AstNode("JORGITO"); }



%%