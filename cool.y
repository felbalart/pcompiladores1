%{
	package coolc.parser;
    import coolc.ast.*;
%}

%output  "coolc/parser/Parser.java"
%language "Java"

%define parser_class_name "Parser"
%define public
%locations

%code {
    private Program _root;
    public Program getRoot() {
        return _root;
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


%token  T_LPAREN "(" T_RPAREN ")"
%token  T_LCURLY "{" T_RCURLY "}"
%token  T_COLON ":" T_SEMICOLON ";"
%token  T_DOT "." T_COMMA ","
%token  T_DBLQUOTE "\""
%token  T_BACKSLASH "\\"

%token T_CLASS      "class"
%token T_ELSE       "else"
%token T_FALSE      "false"
%token T_FI         "fi"
%token T_IF         "if"
%token T_IN         "in"
%token T_INHERITS   "inherits"
%token T_ISVOID     "isvoid"
%token T_LET        "let"
%token T_LOOP       "loop"
%token T_POOL       "pool"
%token T_THEN       "then"
%token T_WHILE      "while"
%token T_CASE       "case"
%token T_ESAC       "esac"
%token T_NEW        "new"
%token T_OF         "of"
%token T_NOT        "not"
%token T_TRUE       "true"

%token T_CAST "@"
%token T_NEGATE "~"
%token T_MULT "*" T_DIV "/"
%token T_PLUS "+" T_MINUS "-"
%token T_LTE "<=" T_LT "<" T_EQUALS "="
%token T_ASSIGN "<-"
%token T_FAT "=>"

%token T_UNKNOWN

%token <String> TYPE
%token <String> ID
%token <String> STRING
%token <Boolean> BOOL
%token <Integer> INTEGER

%type <Program> program;
%type <ClassDef> class;
%type <FeatureList> class_body;
%type <Feature> feature;

%type <Variable> formal var_declaration
%type <Node> input
%type <CaseList> case_list
%type <Case> case
%type <Args> args args_non_empty
%type <StmtList> stmt_list
%type <DeclList> formal_list formal_list_non_empty let_list

%type <Expr> expr



%%

input
    : program { _root = $1; }

program
    : class ";" { $$ = new Program($1); }
    | program class ";" { $1.add($2); $$ = $1; }
    ;

class
    : "class" TYPE "{" class_body "}"    
            { 
                $$ = new ClassDef($2, $4);
                ((Node)$$).setPos(@1.begin);
            }
    | "class" TYPE "inherits" TYPE "{" class_body "}"    
            { $$ = new ClassDef($2, $4, $6); ((Node)$$).setPos(@1.begin); }
    ;

class_body
    : feature ";"   { 
        $$ = new FeatureList($1); 
    }
    | class_body feature ";" { 
        $1.add($2); $$ = $1; 
    }
    ;

feature
    : ID "(" formal_list ")" ":" TYPE "{" expr "}" { 
        $$ = new Method($1, $3, $6, $8); 
        ((Node)$$).setPos(@1.begin);
    }
    | var_declaration
        {
            $$ = $1; 
        }
    ;

formal_list
    : /* empty */             { $$ = new DeclList(); }
    | formal_list_non_empty   { $$ = $1; }
    ;

formal_list_non_empty
    : formal                  
            { $$ = new DeclList($1); }

    | formal_list_non_empty "," formal
            { $1.add($3); $$ = $1; }
    ;   

formal
    : ID ":" TYPE   { $$ = new Variable($1, $3); ((Node)$$).setPos(@1.begin); }
    ;


args
    : /* empty */      { $$ = new Args(); }
    | args_non_empty   { $$ = $1; }
    ;

args_non_empty
    : expr  {   $$ = new Args($1); }
    | args_non_empty "," expr 
            { $1.add($3); $$ = $1; }

stmt_list
    : expr ";"
            {  $$ = new StmtList($1); }
    | stmt_list expr ";"
            {
                $1.add($2);
                $$ = $1;
            }

var_declaration
    : ID ":" TYPE 
            {  $$ = new Variable($1, $3); ((Node)$$).setPos(@1.begin); }
    | ID ":" TYPE "<-" expr
            {  $$ = new Variable($1, $3, $5); ((Node)$$).setPos(@1.begin); }
    ;

let_list
    : var_declaration
            {   $$ = new DeclList($1); }
    | let_list "," var_declaration
            { 
                $1.add($3);
                $$ = $1;
            }
    ;

case
    : ID ":" TYPE "=>" expr ";" 
            { $$ =  new Case($1, $3, $5); ((Node)$$).setPos(@1.begin); }
    ;


case_list
    : case  
            {   $$ = new CaseList($1); }

    | case_list case    
            {   $1.add($2); $$ = $1; }
    ;

expr 
    : ID "<-" expr      
            { $$ = new AssignExpr($1, $3); ((Node)$$).setPos(@1.begin); }

    | expr "@" TYPE "." ID "(" args  ")" 
            { $$ = new DispatchExpr($1, $3, $5, $7);  ((Node)$$).setPos(((Node)$1).getPos());  }

    | expr "." ID "(" args  ")"
            { $$ = new DispatchExpr($1, $3, $5);  ((Node)$$).setPos(((Node)$1).getPos());  }

    | ID "(" args ")"  
            { $$ = new DispatchExpr($1, $3 ); ((Node)$$).setPos(@1.begin); }

    | "if" expr "then" expr "else" expr "fi"
            { $$ = new IfExpr($2, $4, $6);  ((Node)$$).setPos(@1.begin); }

    | "while" expr "loop" expr "pool"
            { $$ = new WhileExpr($2, $4); ((Node)$$).setPos(@1.begin); }

    | "{" stmt_list "}"
            { $$ = new Block($2); ((Node)$$).setPos(@1.begin); }

    | "let" let_list "in" expr
            { $$ = new LetExpr($2, $4); ((Node)$$).setPos(@1.begin); }

    | "case" expr "of" case_list "esac" 
            { $$ = new CaseExpr($2, $4); ((Node)$$).setPos(@1.begin); }

    | "new" TYPE        { $$ = new NewExpr($2); ((Node)$$).setPos(@1.begin); }
    | "isvoid" expr     { $$ = new UnaryExpr( UnaryOp.ISVOID, $2); ((Node)$$).setPos(@1.begin); }
    | expr "+" expr     { $$ = new BinaryExpr( BinaryOp.PLUS, $1, $3); ((Node)$$).setPos(((Node)$1).getPos()); }
    | expr "-" expr     { $$ = new BinaryExpr( BinaryOp.MINUS, $1, $3); ((Node)$$).setPos(((Node)$1).getPos()); }
    | expr "*" expr     { $$ = new BinaryExpr( BinaryOp.MULT, $1, $3); ((Node)$$).setPos(((Node)$1).getPos()); }
    | expr "/" expr     { $$ = new BinaryExpr( BinaryOp.DIV, $1, $3); ((Node)$$).setPos(((Node)$1).getPos()); } 
    | "~" expr          { $$ = new UnaryExpr( UnaryOp.NEGATE, $2); ((Node)$$).setPos(@1.begin); }
    | expr "<" expr     { $$ = new BinaryExpr( BinaryOp.LT, $1, $3); ((Node)$$).setPos(((Node)$1).getPos()); } 
    | expr "<=" expr    { $$ = new BinaryExpr( BinaryOp.LTE, $1, $3); ((Node)$$).setPos(((Node)$1).getPos()); } 
    | expr "=" expr     { $$ = new BinaryExpr( BinaryOp.EQUALS, $1, $3); ((Node)$$).setPos(((Node)$1).getPos()); }
    | "not" expr        { $$ = new UnaryExpr( UnaryOp.NOT, $2); ((Node)$$).setPos(@1.begin); }
    | "(" expr ")"   { $$ = $2; }
    | ID        { $$ = new IdExpr($1); ((Node)$$).setPos(@1.begin); }
    | INTEGER   { $$ = new ValueExpr<Integer>($1); ((Node)$$).setPos(@1.begin); }
    | STRING    { $$ = new ValueExpr<String>($1); ((Node)$$).setPos(@1.begin); }
    | "true"    { $$ = new ValueExpr<Boolean>(true); ((Node)$$).setPos(@1.begin); }
    | "false"   { $$ = new ValueExpr<Boolean>(false); ((Node)$$).setPos(@1.begin); }
    ;


%%



