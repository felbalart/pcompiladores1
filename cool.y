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

	public static void p(String x){ //System.out.println(x);
	}

    public static String getTokenName(int t) {
        return yytname_[t-255];
    }

}

%right "<-"
%nonassoc "not"
%left "<=" "<" "="
%left "+" "-"
%left "*" "/"
%nonassoc "isvoid"
%nonassoc "~"
%nonassoc "@"
%nonassoc "."


%token <AstNode> TYPE
%token <AstNode> ID
%token <AstNode> INT
%token <AstNode> BOOL
%token 		LOOP "loop"
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
%token 		EQUALS "="
%token 		LESSOREQUAL "<="
%token 		LESS "<"
%token 		PLUS "+"
%token 		TIMES "*"
%token 		SLASH "/"
%token 		MINUS "-"
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
%token 	<AstNode>	STRING
%token 		DOT "."
%token 		FARROW "=>"
%token 		BARROW "<-"



%define stype "AstNode"

%type <AstNode> program class_list clase feature_list feature_list_not_empty feature formal_list formal_list_not_empty formal expr_list expr_list_not_empty expr_semicol_list let_list let_asign id_type_farrow_list id_type_farrow expr

%%

start
	: program { root = $1;}
	| expr { root = $1;}
	;
	
program
	: class_list { $$ = new AstNode("program"); $$.addChild($1);}
	;
	
	
class_list
	: clase ";" { $$ = $1;}
	| class_list clase ";" { $$ = $1; $1.addSibling($2); }
	;
	
clase
	: CLASS TYPE INHERITS TYPE "{" feature_list "}" { $$ =  new AstNode("class "+$2.tag+" : "+$4.tag); $$.addChild($6);}
	| CLASS TYPE "{" feature_list "}" { $$ =  new AstNode("class "+$2.tag); $$.addChild($4);}
	;
	
feature_list
	: /*empty*/ {$$ = null;}/////{$$ = new EmptyNode();}// /*new AstNode("DEBUG0");}*/null;}
	|feature_list_not_empty { $$ = $1;}
	;
	
feature_list_not_empty
	: feature ";" { $$ = $1; }
	| feature_list_not_empty feature ";" { $$ = $1; $1.addSibling($2); }
	;

feature
	: ID "(" formal_list ")" ":" TYPE "{" expr "}" { $$ = new AstNode("method "+$1.tag+" : "+$3.tag+$6.tag); $$.addChild($8);}
	| ID ":" TYPE BARROW expr { $$ = new AstNode("field "+$3.tag+" "+$1.tag); $$.addChild($5);}
	| ID ":" TYPE { $$ = new AstNode("field "+$3.tag+" "+$1.tag);}
	;
		
	
formal_list
	: /*empty*/  {$$ = new AstNode("");}
	| formal_list_not_empty { $$ = $1;}
	;

formal_list_not_empty
	: formal {$$ = new AstNode($1.tag);}
	| formal_list_not_empty "," formal { $$ = new AstNode($1.tag+$3.tag);}
	;
	
formal
	: ID ":" TYPE { $$ = new AstNode($3.tag+" "+$1.tag+" -> ");}
	;
	
expr_list
	:/*empty*/ {$$ = null;}// new EmptyNode();}///*new AstNode("DEBUG0");}*/null;}
	|expr_list_not_empty { $$ = $1;}
	;

expr_list_not_empty
	:expr {$$ = $1;}
	|expr_list_not_empty "," expr   { $$ = $1; $1.addSibling($3); }
	
expr_semicol_list
	: expr ";"		{ $$ = $1;}
	| expr_semicol_list expr ";"  {$$ = $1;  $$.addSibling($2);}
	;

let_list
	: let_asign {$$ = $1;}
	| let_list "," let_asign { $$ = $1; $1.addSibling($3); }
	;
	
let_asign
	: ID ":" TYPE {$$ = new AstNode($3.tag+" "+$1.tag);}
	| ID ":" TYPE "<-" expr {$$ = new AstNode($3.tag+" "+$1.tag); $$.addChild($5);}
	;
	

id_type_farrow_list
	: id_type_farrow {$$ = $1;}
	| id_type_farrow_list id_type_farrow { $$ = $1; $1.addSibling($2); }
	;
	
id_type_farrow
	: ID ":" TYPE "=>" expr ";" { $$ = new AstNode("case "+$3.tag+" "+$1.tag); $$.addChild($5);}
	;
	
	 
expr


	: "(" expr ")" {$$ = $2;}
	
	| NEW TYPE { $$ = new AstNode("new "+$2.tag);}
	| ISVOID expr { $$  = new AstNode("unary isvoid"); $$.addChild($2);}	
	| expr "<" expr  { $$  = new AstNode("binary <"); $$.addChild($1); $$.addChild($3);}
	| expr "<=" expr  { $$  = new AstNode("binary <="); $$.addChild($1); $$.addChild($3);}
	| expr "=" expr  { $$  = new AstNode("binary ="); $$.addChild($1); $$.addChild($3);}
	| expr "+" expr { $$  = new AstNode("binary +"); $$.addChild($1); $$.addChild($3);}
	| expr "-" expr { $$  = new AstNode("binary -"); $$.addChild($1); $$.addChild($3);}
	| expr "*" expr { $$  = new AstNode("binary *"); $$.addChild($1); $$.addChild($3);}
	| expr "/" expr { $$  = new AstNode("binary /"); $$.addChild($1); $$.addChild($3);}	
	| NOT expr { $$  = new AstNode("unary not"); $$.addChild($2);}	
	| TILDE expr { $$  = new AstNode("unary ~"); $$.addChild($2);}
	| ID "<-" expr { $$ = new AstNode("assign "+$1.tag);  $$.addChild($3);}
	
	| ID { $$ =  new AstNode("id "+$1.tag);}
	| INT { $$ = new AstNode("int "+$1.tag);}
	| STRING { $$ = new AstNode("str \""+$1.tag+"\"");}
	| BOOL { $$ = new AstNode("bool "+$1.tag);}	
	
	| expr "@" TYPE "." ID "(" expr_list ")" 
	{
	$$ = new AstNode("call "+$5.tag+" as "+$3.tag);
	AstNode acallee = new AstNode("callee");
	acallee.addChild($1);
	$$.addChild(acallee);
	AstNode arg_list = $7;
	if(arg_list != null)
	{AstNode aargs = new AstNode("args");
	aargs.addChild($7);
	$$.addChild(aargs);}
	}
	
	
	| expr "." ID "(" expr_list ")"
	{
	$$ = new AstNode("call "+$3.tag);
	AstNode acallee = new AstNode("callee");
	acallee.addChild($1);
	$$.addChild(acallee);
	AstNode arg_list = $5;
	if(arg_list != null)
	{AstNode aargs = new AstNode("args");
	aargs.addChild($5);
	$$.addChild(aargs);}
	}
			
	| ID "(" expr_list ")"
	{
	$$ = new AstNode("call "+$1.tag);
	AstNode arg_list = $3;
	if(arg_list != null)
	{AstNode aargs = new AstNode("args");
	aargs.addChild($3);
	$$.addChild(aargs);}
	}	
	
	| IF expr THEN expr ELSE expr FI
		{AstNode aif = new AstNode("if");
		AstNode athen = new AstNode("then");
		AstNode aelse = new AstNode("else");
		aif.addSibling(athen); aif.addSibling(aelse);
		aif.addChild($2); athen.addChild($4); aelse.addChild($6);
		$$ = aif;
		}
	
	| WHILE expr LOOP expr POOL
		{AstNode awhile = new AstNode("while");
		AstNode aloop = new AstNode("loop");
		awhile.addSibling(aloop);
		awhile.addChild($2);
		aloop.addChild($4);
		$$ = awhile;
		}
		
		
	| "{" expr_semicol_list "}" {$$ = new AstNode("block");  $$.addChild($2);}
	
	| LET let_list IN expr 
	{
	AstNode alet = new AstNode("let");
	AstNode vars = new AstNode("vars");
	vars.addChild($2);
	alet.addChild(vars);
	alet.addChild($4);
	$$ = alet;
		
	}
	
	
	| CASE expr OF id_type_farrow_list ESAC
	{
	AstNode ainst = new AstNode("instanceof");
	ainst.addChild($2);
	ainst.addChild($4);
	$$ = ainst;	
	}
	
	

	;
	
	

%%