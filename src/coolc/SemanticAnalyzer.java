package coolc;

import coolc.parser.*;
import coolc.ast.*;

import java.io.*;
import java.util.*;

public class SemanticAnalyzer {
	
	
	public static Stack<Scope> scopes = new Stack<Scope>();	
	public static String current_class = "";
		
		
	
	

    public static void printInstructions() {
        System.out.println(
            "Usage Coolc <action> file1 file2 ... filen\n" +
            "Available actions: \n" +
            "scan - scans each files and outputs a token list\n" +
            "parse - parses each file and outputs the syntax tree\n"
            );
    }

   

    public static void analyze(List<String> files) throws FileNotFoundException, IOException { 



        for(String filename: files) {
            File f = new File(filename);
            Reader r = new FileReader(f);
            Lexer lex = new Lexer(r);

            Parser p = new Parser(lex);

            System.err.printf("parsing %s\n", filename);

            p.parse();

            print(p.getRoot());
        }

    }

    private static void print(Program root) {
        System.out.println("program");
        for(ClassDef c: root) {
        	scopes.add(new Scope());
            current_class = c.getType();
        	print(c);
            scopes.pop();
            
        }
    }

    private static void print(ClassDef c) {
        printIndent(1);
        System.out.printf("class %s", c.getType());
        if( c.getSuper() != null ) {
            System.out.printf(" : %s", c.getSuper());
        }
        System.out.println();        
        
        for(Feature f: c.getBody()) {
            print(f);
        }
    }

    private static void print(Feature f) {
        if(f instanceof Method) {
            Method m = (Method)f;
            
            scopes.peek().vars.add(new Variable(m.getName(),"Method<"+m.getType()+">"));
            scopes.add(new Scope());
            
            printIndent(2);
            System.out.printf("method %s : ", m.getName());
            for(Variable var: m.getParams()) {
                System.out.printf("%s %s -> ", var.getType(), var.getId());
                scopes.peek().vars.add(var);

                if( var.getValue() != null ){
                    throw new RuntimeException("WTF? initializing parameter definition?");
                }
            }
            System.out.println(m.getType());

            print(m.getBody(), 3);
            
            scopes.pop();

        }
        else if (f instanceof Variable) {
            Variable var = (Variable)f;
            scopes.peek().addVar(var);
            printIndent(2);
            System.out.printf("field %s %s\n", var.getType(), var.getId());
            if( var.getValue() != null ) {
                print(var.getValue(), 3);
            }
        }
        else {
            throw new RuntimeException("Unknown feature type " + f.getClass());
        }
    }

    private static void printIndent(int indent) {
        for (int i = indent; i > 0 ; i-- ) {
            System.out.print("    ");
        }  
    }

    //Aqui debemos agregar los tipos para el árbol semántico
    @SuppressWarnings("unchecked")
    private static void print(Expr e, int indent) {

        assert e != null : "node is null";

        printIndent(indent);

        if(e instanceof Block) {
            System.out.println("block ["+e.type+"]");
            for(Expr child: ((Block)e).getStatements()) {
                print(child, indent+1);
            }
        }
        else if(e instanceof WhileExpr) {
            WhileExpr loop = (WhileExpr)e;

            System.out.println("while [Object]");
            print(loop.getCond(), indent+1);

            printIndent(indent);
            System.out.println("loop");
            print(loop.getValue(), indent+1);


        }
        else if(e instanceof AssignExpr) {
        	String the_id = ((AssignExpr)e).getId();
            System.out.printf("assign %s [%s]\n", the_id ,getIdType(the_id));
            print(((AssignExpr)e).getValue(), indent+1);
        }        
        else if(e instanceof DispatchExpr) {
            DispatchExpr call = (DispatchExpr)e;
            
            if(call.type==null) call.type = getIdType(call.getName());       

            System.out.printf("call %s", call.getName());
            if(call.getType() != null) {
                System.out.printf(" as %s", call.getType());
            }
            System.out.println();
            if( call.getExpr() != null ) {
                printIndent(indent+1);
                System.out.println("callee");
                print(call.getExpr(), indent+2);
            }
            if (call.getArgs().size() > 0) {
                printIndent(indent+1);
                System.out.println("args");
                for(Expr arg: call.getArgs()) {
                    print(arg, indent+2);
                }
            }
        }
        else if(e instanceof IfExpr) {
            IfExpr cond = (IfExpr)e;

            System.out.println("if ["+e.type+"]");
            print(cond.getCond(), indent+1);

            printIndent(indent);
            System.out.println("then");
            print(cond.getTrue(), indent+1);

            printIndent(indent);
            System.out.println("else");
            print(cond.getFalse(), indent+1);

        }
        else if(e instanceof NewExpr) 
        {
            System.out.printf("new %s [%s]\n",((NewExpr)e).getType(),((NewExpr)e).type);
        }
        else if(e instanceof UnaryExpr) {
            UnaryExpr expr = (UnaryExpr)e;
            System.out.printf("unary %s\n", operator(expr.getOp()));
            print(expr.getValue(), indent + 1);
        }
        else if(e instanceof BinaryExpr) {
            BinaryExpr expr = (BinaryExpr)e;
            System.out.printf("binary %s [%s]\n", operator(expr.getOp()),expr.type);
            print(expr.getLeft(), indent + 1);   
            print(expr.getRight(), indent + 1);   
        }
        else if (e instanceof CaseExpr) {
            CaseExpr caseExpr = ((CaseExpr)e);
            System.out.println("instanceof");
            print(caseExpr.getValue(), indent+1);

            for(Case c : caseExpr.getCases()) {
            	
            	scopes.add(new Scope());
            	
                printIndent(indent+1);
                System.out.printf("case %s %s\n", c.getType(), c.getId());
                scopes.peek().addVar(new Variable(c.getId(),c.getType()));
                print(c.getValue(), indent+2);
                scopes.pop();
                
            }

        }
        else if (e instanceof LetExpr) {
        	
        	scopes.add(new Scope());
        	
            LetExpr let = (LetExpr)e;
            System.out.println("let ["+let.type+"]");
            printIndent(indent+1);
            System.out.println("vars");
            for(Variable var : let.getDecl()) {
                printIndent(indent+2);
                System.out.printf("%s %s\n", var.getType(), var.getId());
                
                scopes.peek().addVar(var);
                
                if(var.getValue() != null) {
                    print(var.getValue(), indent+3);
                }
            }

            print(let.getValue(), indent+1);
            
            scopes.pop();
            
        }
        else if(e instanceof IdExpr) {
            System.out.printf("id %s [%s]\n", ((IdExpr)e).getId(), getIdType(((IdExpr)e).getId()));
        }
        else if(e instanceof ValueExpr) {
            Object value = ((ValueExpr)e).getValue();

            if(value instanceof String) {
                System.out.printf("str \"%s\" [%s]\n", ((String)value).replace("\n", "\\n")
                    .replace("\t", "\\t").replace("\f", "\\f").replace("\b", "\\b"),e.type);
            }
            else if(value instanceof Integer) {
                System.out.printf("int %d [%s]\n", value, e.type);
            }
            else if(value instanceof Boolean) {
                System.out.printf("bool %s [%s]\n",value, e.type);
            }
            else {
                throw new RuntimeException(String.format("Unsupported constant type %s\n", e.getClass()));
            }
        }
        else {

            if( e != null) {
                throw new RuntimeException(String.format("Unsupported node type %s\n", e.getClass()));
            }
            else {
                throw new RuntimeException(String.format("Null node", e.getClass()));
            }

        }

    }


    public static String operator(UnaryOp op) {
        switch(op) {
            case ISVOID:    return "isvoid";
            case NEGATE:    return "~"; 
            case NOT:       return "not";
        }

        return null;
    }


    public static String operator(BinaryOp op) {
        switch(op) {
            case PLUS:      return "+";
            case MINUS:     return "-";
            case MULT:      return "*";
            case DIV:       return "/";            
            case LT:        return "<";
            case LTE:       return "<=";
            case EQUALS:    return "=";
        }
        return null;
    }



    
    public static String getIdType(String id)
    {
    	if(id.equals("self"))
    		return current_class;
    	
    	Stack<Scope> invertedScopes = new Stack<Scope>();
    	String type ="";
    	
    	String sdes="";
    	
    	while(!scopes.empty())
    	{
    		Scope search_scope = scopes.pop();
    		invertedScopes.push(search_scope);
    		
    		if(type.equals("")) type = search_scope.getVarType(id);
    		
    		sdes+=search_scope.description(); 
    		    		
    	}
    	
    	while(!invertedScopes.empty())
    	{scopes.push(invertedScopes.pop());}
    	
    	if(type.equals("")){ type= "ERROR:'"+id+"'NotFound|||"+sdes;//throw new RuntimeException("ERROR: ID '"+id+"' not found in scope");    	
    	}
    	
    	//System.out.printf("LARGO SCOPES %s, 1st: %s",scopes.size(), scopes.peek().vars.size());
    	
    	
    	return type;
    	
    	
    }
    
    
    
    
    
    
    
    public static List<String> getClFilenames(String path)
    {
     
      List<String> file_list = new ArrayList<String>();

     
      String files;
      File folder = new File(path);
      File[] listOfFiles = folder.listFiles(); 
     
      for (int i = 0; i < listOfFiles.length; i++) 
      {
     
       if (listOfFiles[i].isFile()) 
       {
       files = listOfFiles[i].getName();
           if (files.endsWith(".cl") || files.endsWith(".CL"))
           {
              file_list.add(path+"/"+files);
            }
         }
      }
    return file_list;
    }

    
    

}  