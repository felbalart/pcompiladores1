package coolc.parser;

%%

%{

    private Object yylval;

	StringBuffer str = new StringBuffer();
	Position str_beginning_position;	
	int nested_comment_count = 0; 
	
    public Object getLVal() {
        return yylval;
    }

    public Position getStartPos() {
    if(str_beginning_position != null)
    	 {int line = str_beginning_position.line;
    	  int column = str_beginning_position.column;
    	  str_beginning_position = null;
    	return new Position(line, column);}
    else
    	return new Position(yyline, yycolumn);
    }

    public Position getEndPos() {
        return new Position(yyline, yycolumn);
    }

    public void yyerror(String msg) {
        //throw new Exception();
    }

%}

%public
%class Lexer
%unicode
%line
%column
%ignorecase

L = [a-zA-Z_]
D = [0-9]
I = [ \t\r\n]
LUC = [A-Z]
LLC = [a-z]

%x SINGLE_LINE_COMMENT
%x MULTI_LINE_COMMENT
%x STRING

%implements Parser.Lexer
%int

%%

{I} {}
"--" {yybegin(SINGLE_LINE_COMMENT);}
"(*" {yybegin(MULTI_LINE_COMMENT);}
    
"loop" { return Parser.LOOP; }
"not" { return Parser.NOT; }
"class" { return Parser.CLASS; }
"else" { return Parser.ELSE; }
"while" { return Parser.WHILE; }
"pool" { return Parser.POOL; }
"then" { return Parser.THEN; }
"fi" { return Parser.FI; }
"if" { return Parser.IF; }
"case" { return Parser.CASE; }
"in" { return Parser.IN; }
"esac" { return Parser.ESAC; }
"inherits" { return Parser.INHERITS; }
"isvoid" { return Parser.ISVOID; }
"new" { return Parser.NEW; }
"of" { return Parser.OF; }
"let" { return Parser.LET; }

"true"|"false" { yylval=yytext(); return Parser.BOOL;}
{LLC}({L}|{D})* {	yylval=yytext(); return Parser.ID;}
{LUC}({L}|{D})* {	yylval=yytext(); return Parser.TYPE;}
{D}+ {	yylval=yytext(); return Parser.INT;}
	
	
	"=>" {return Parser.FARROW;}
	"<-" {return Parser.BARROW;}
	
	
	"=" {return Parser.EQUALS;}
	"+" {return Parser.PLUS;}
	"*" {return Parser.TIMES;}
	"-" {return Parser.MINUS;}
	"/" {return Parser.SLASH;}
   
    "<="     { return Parser.LESSOREQUAL; }
    "<"     { return Parser.LESS; }
    "@"     { return Parser.ATSIGN; }
    "~" 	{return Parser.TILDE;}
    "?" 	{return Parser.QUEST;}
    "!" 	{return Parser.EXCLAM;}

    "("     { return Parser.LPARENT; }
    ")"     { return Parser.RPARENT; }
    "["     { return Parser.LSQUARE; }
    "]"     { return Parser.RSQUARE; }    
    "{"     { return Parser.LCURLY; }
    "}"     { return Parser.RCURLY; }
    ";"     { return Parser.SEMICOL; }
    ":"		{ return Parser.COLON; }
    ","     { return Parser.COMMA; }
    "."		{ return Parser.DOT; }
    \"		{ str.setLength(0); str_beginning_position = new Position(yyline, yycolumn); yybegin(STRING); }    
    
	.           { System.out.printf("Unknown character [%s]\n", yytext());
                       return Parser.ERROR;    }
    
    <<EOF>> { return Parser.EOF; }
    
    
    <STRING> {
		\"	 { yybegin(YYINITIAL);
				yylval = str.toString();												
				return Parser.STRING;
			}
				
		
		
		"\\\"" { str.append('\"'); }
		"\\\\" { str.append("\\"); }
		"\n" { str.append("\\n"); }
		"\t" { str.append("\\t"); }
		[^]	{ str.append( yytext() ); }
		
		
		
		}
	    
	<SINGLE_LINE_COMMENT> {
	  "\n"				{yybegin(YYINITIAL);}  
	  . {}
	    	    
	    }
	<MULTI_LINE_COMMENT> {
	  "*)"				{ if (nested_comment_count ==0)
	  					  yybegin(YYINITIAL);
	  					  else
	  					  nested_comment_count--;
	  					  }
	  					  
	  	"(*"			{nested_comment_count++;}	  	
	  	
	    \n	{ }	    
	  	. {}
	  	  
	   	
	    }
    
    
    
    
    