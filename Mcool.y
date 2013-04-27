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

%token T_UNKNOWN

%token  T_LPAREN "(" T_RPAREN ")"
%token  T_LBRACE  "[" T_RBRACE "]"
%token  T_SEMICOLON ";"
%token  T_COMMA ","

%token T_PLUS "+"

%token <ValueNode> ID
%token <ValueNode> INT

%define stype "AstNode"

%type <AstNode> expr matrix vector param_list param_list_nonempty


%%


start
    : expr      { root = $1; }
    ;

expr
    : INT                       { $$ = $1;  }
    | expr "+" expr             { $$ = new AstNode("sum", $1, $3); }
    | ID "(" param_list ")"     { $$ = new CallNode((String)$1.getValue(), $3); }
    | "[" matrix "]"            { $$ = $2;}
    | ID                        { $$ = $1; }
    ;

param_list
    : /* empty */               { $$ = null; }
    | param_list_nonempty       { $$ = $1; }
    ;

param_list_nonempty
    : expr                      { $$ = new AstNode("args", $1); }
    | param_list_nonempty "," expr  { $1.children.add($3); $$ = $1; }

matrix
    : vector                    { $$ = new AstNode("matrix", $1); }
    | matrix ";" vector         { $$.children.add($3); $$ = $1; }    
    ;

vector
    : expr                      { $$ = new AstNode("vector", $1); }
    | vector "," expr           { $1.children.add($3); $$ = $1; }
    ;

%%