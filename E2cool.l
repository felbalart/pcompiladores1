package coolc.parser;
import coolc.ast.*;

%%

%{

    private AstNode yylval;

    public AstNode getLVal() {
        return yylval;
    }

    public Position getStartPos() {
        return new Position(yyline, yycolumn);
    }

    public Position getEndPos() {
        return new Position(yyline, yycolumn);
    }

    public void yyerror(String msg) {
        System.err.println(msg);
    }

%}

%public
%class Lexer
%unicode
%line
%column


%ignorecase

ID     = [a-z]+

%x comment
%x multiline_comment

%implements Parser.Lexer
%int

%%
    [0-9]+  {   
                yylval = new ValueNode("int", Integer.parseInt(yytext()));
                return Parser.INT;
            }

    {ID}    {
                yylval = new ValueNode("id", yytext());
                return Parser.ID; 
            }

    "+"     { return Parser.T_PLUS; }

    "("     { return Parser.T_LPAREN; }
    ")"     { return Parser.T_RPAREN; }
    "["     { return Parser.T_LBRACE; }
    "]"     { return Parser.T_RBRACE; }    
    ";"     { return Parser.T_SEMICOLON; }
    ","     { return Parser.T_COMMA; }
    
    [ \t\r\n]+  { 
        // ignoramos el espacio en blanco 
    }

    .           { System.out.printf("Unknown character [%s]\n", yytext());
                       return Parser.T_UNKNOWN;    }
    
    <<EOF>> { return Parser.EOF; }