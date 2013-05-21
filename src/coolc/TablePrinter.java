package coolc;

import coolc.parser.*;
import coolc.ast.*;

import java.io.*;
import java.util.*;

public class TablePrinter {
	
	private static int ind=0;

    public static void printInstructions() {
        System.out.println(
            "Usage Coolc <action> file1 file2 ... filen\n" +
            "Available actions: \n" +
            "scan - scans each files and outputs a token list\n" +
            "parse - parses each file and outputs the syntax tree\n"
            );
    }


    public static void build(List<String> files) throws FileNotFoundException, IOException { 



        for(String filename: files) {
        	//System.out.println("ANALYZING "+filename);
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
        
        for(ClassDef c: root) {            
            print(c);
        }
    }

    private static void print(ClassDef c) {
        
        System.out.printf("class %s", c.getType());
        if( c.getSuper() != null ) {
            System.out.printf(" : %s", c.getSuper());
        }
        else
        System.out.printf(" : %s", "Object");
        
        System.out.println();
        printIndent(1);
        System.out.println("fields");
        boolean methods_already = false;
        for(Feature f: c.getBody()) {
        	
        	if(f instanceof Method && !methods_already) {methods_already = true; printIndent(1); System.out.println("methods");} 
        	
        	print(f);
        }
    }

    private static void print(Feature f) {
        if(f instanceof Method) {
            Method m = (Method)f;
            printIndent(2);
            System.out.println(m.getType()+" "+m.getName());
            
            if(m.getParams().size()>=1)
            	{printIndent(3);
            	 System.out.println("arguments");
            	
            	}
            for(Variable var: m.getParams()) {
            	printIndent(4);
                System.out.println(var.getType()+" "+var.getId());

                if( var.getValue() != null ){
                    throw new RuntimeException("WTF? initializing parameter definition?");
                }
            }
            printIndent(3);
            System.out.println("body");

            print(m.getBody(), 3);

        }
        else if (f instanceof Variable) {
            Variable var = (Variable)f;
            printIndent(2);
            System.out.println(var.getType()+" "+var.getId());
            //if( var.getValue() != null ) {
              //  print(var.getValue(), 3);
            //}
        }
        else {
            throw new RuntimeException("Unknown feature type " + f.getClass());
        }
    }

    private static void printIndent(int indent) {
        for (int i = indent; i > 0 ; i-- ) {
            System.out.print("    ");
        } 
        ind=indent;
    }

    //Aqui debemos agregar los tipos para el árbol semántico
    @SuppressWarnings("unchecked")
    private static void print(Expr e, int indent) {

        assert e != null : "node is null";

        //printIndent(indent);

        if(e instanceof Block) {
            
            for(Expr child: ((Block)e).getStatements()) {
            	//System.out.print("MANDE_A_IMPRIMIR_HIJO_"+child.getClass().getName());
                print(child, indent);
            }
        }
        else if(e instanceof WhileExpr) {
            WhileExpr loop = (WhileExpr)e;

            
            print(loop.getCond(), indent);

            //printIndent(indent);
            
            print(loop.getValue(), indent);


        }
        else if(e instanceof AssignExpr) {
            
            print(((AssignExpr)e).getValue(), indent);
        }        
        else if(e instanceof DispatchExpr) {
            DispatchExpr call = (DispatchExpr)e;

            
            
            
                for(Expr arg: call.getArgs()) 
                    print(arg, indent);
                
            }
        
        else if(e instanceof IfExpr) {
            IfExpr cond = (IfExpr)e;


            print(cond.getCond(), indent);
            print(cond.getTrue(), indent);
            //System.out.println("FV"+cond.getFalse().getClass().getName());
            print(cond.getFalse(), indent);
            
            

        }

        else if(e instanceof UnaryExpr) {
            UnaryExpr expr = (UnaryExpr)e;
            print(expr.getValue(), indent);
        }
        else if(e instanceof BinaryExpr) {
            BinaryExpr expr = (BinaryExpr)e;

            print(expr.getLeft(), indent);   
            print(expr.getRight(), indent);   
        }
        
        
        
        else if (e instanceof CaseExpr) {
            CaseExpr caseExpr = ((CaseExpr)e);
            
            print(caseExpr.getValue(), indent);     
            

            for(Case c : caseExpr.getCases()) {
            	printIndent(indent+1);
                System.out.println("scope");
                printIndent(indent+2);
                System.out.println(c.getType()+" "+c.getId());
                print(c.getValue(), indent+2);
            }

        }
	else if (e instanceof LetExpr) {           

            printIndent(indent+1);
            System.out.println("scope");
           
            LetExpr let = (LetExpr)e;
           
            //printIndent(indent+1);
            //System.out.println("vars");
            for(Variable var : let.getDecl()) {
                printIndent(indent+2);
                System.out.println(var.getType()+" "+var.getId());
                if(var.getValue() != null) {
                	//System.out.print("VALUE DEL LET DE RECIEN ES UN"+var.getValue().getClass().getName());
                    print(var.getValue(), indent+2);
                }
            }

            print(let.getValue(), indent+1);
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




}  