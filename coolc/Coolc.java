package coolc;

import coolc.parser.*;
import coolc.ast.*;

import java.io.*;
import java.util.*;

public class Coolc {

    public static void printInstructions() {
        System.out.println(
            "Usage Coolc <action> file1 file2 ... filen\n" +
            "Available actions: \n" +
            "scan - scans each files and outputs a token list\n" +
            "parse - parses each file and outputs the syntax tree\n"
            );
    }

    public static void main(String[] args) throws FileNotFoundException, IOException {

        if (args.length < 2) {
            printInstructions();
            return;
        }


        String action = args[0];

        List<String> files = Arrays.asList(args).subList(1, args.length);

        switch(action) {

            case "scan":
                scan(files);
                break;

            case "parse":
                parse(files);
                break;

            default:
                printInstructions();
                return;
        }


    }

    private static void scan(List<String> files) throws FileNotFoundException, IOException {

        for(String filename: files) {
            File f = new File(filename);
            Reader r = new FileReader(f);
            Lexer lex = new Lexer(r);

            for(int token = lex.yylex(); token != Parser.EOF; token = lex.yylex()) {

                Position pos = lex.getStartPos();

                switch(token) {

                    case Parser.ID:
                        System.out.printf("%s:%2d:%2d  Id<%s>\n", f.getPath(), pos.line, pos.column, lex.getLVal().tag);
                        break;

                    case Parser.INT:
                        System.out.printf("%s:%2d:%2d  Int<%s>\n", f.getPath(), pos.line, pos.column, lex.getLVal().tag);
                        break;

                    default:
                        System.out.printf("%s:%2d:%2d  %s\n", f.getPath(), pos.line, pos.column, Parser.getTokenName(token));
                        break;
                }

            }
        }
    }

    private static void parse(List<String> files) throws FileNotFoundException, IOException { 
        
        for(String filename: files) {        
            File f = new File(filename);
            Reader r = new FileReader(f);
            Lexer lex = new Lexer(r);
            Parser p = new Parser(lex);
            // p.setDebugLevel(1);

            p.parse();
            if( p.getRoot() != null) {
                print(p.getRoot(), 0);
            }
        }
    }


    private static void print(AstNode n, int indent) {

        for(int i = indent; i > 0; i--) {
            System.out.print("    ");
        }

        if(n instanceof ValueNode) {
            System.out.printf("%s %s\n", n.tag, ((ValueNode)n).getValue());
        }
        
        else if(n instanceof CallNode) {
            CallNode call = (CallNode)n;
            System.out.println("call " + call.getId());

            if(call.getArgs() != null )
                for(AstNode c: call.getArgs().children) {
                    if(c != null) {
                        print(c, indent+1);
                    }
                }
        }
        else if(n instanceof EmptyNode) {
            return;
        }
        else {
            System.out.println(n.tag);

            for(AstNode c: n.children) {
                if(c != null) {
                    print(c, indent+1);
                }
            }
        }
    }



}  