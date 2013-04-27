
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton implementation for Bison LALR(1) parsers in Java
   
      Copyright (C) 2007, 2008 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* First part of user declarations.  */

/* Line 32 of lalr1.java  */
/* Line 1 of "cool.y"  */

package coolc.parser;
import coolc.ast.*;



/**
 * A Bison parser, automatically generated from <tt>cool.y</tt>.
 *
 * @author LALR (1) parser skeleton written by Paolo Bonzini.
 */
public class Parser
{
    /** Version number for the Bison executable that generated this parser.  */
  public static final String bisonVersion = "2.4.1";

  /** Name of the skeleton that generated this parser.  */
  public static final String bisonSkeleton = "lalr1.java";


  /** True if verbose error messages are enabled.  */
  public boolean errorVerbose = false;



  /** Token returned by the scanner to signal the end of its input.  */
  public static final int EOF = 0;

/* Tokens.  */
  /** Token number, to be returned by the scanner.  */
  public static final int TYPE = 260;
  /** Token number, to be returned by the scanner.  */
  public static final int ID = 261;
  /** Token number, to be returned by the scanner.  */
  public static final int INT = 262;
  /** Token number, to be returned by the scanner.  */
  public static final int BOOL = 263;
  /** Token number, to be returned by the scanner.  */
  public static final int LOOP = 264;
  /** Token number, to be returned by the scanner.  */
  public static final int NOT = 265;
  /** Token number, to be returned by the scanner.  */
  public static final int CLASS = 266;
  /** Token number, to be returned by the scanner.  */
  public static final int ELSE = 267;
  /** Token number, to be returned by the scanner.  */
  public static final int WHILE = 268;
  /** Token number, to be returned by the scanner.  */
  public static final int POOL = 269;
  /** Token number, to be returned by the scanner.  */
  public static final int THEN = 270;
  /** Token number, to be returned by the scanner.  */
  public static final int FI = 271;
  /** Token number, to be returned by the scanner.  */
  public static final int IF = 272;
  /** Token number, to be returned by the scanner.  */
  public static final int CASE = 273;
  /** Token number, to be returned by the scanner.  */
  public static final int IN = 274;
  /** Token number, to be returned by the scanner.  */
  public static final int ESAC = 275;
  /** Token number, to be returned by the scanner.  */
  public static final int INHERITS = 276;
  /** Token number, to be returned by the scanner.  */
  public static final int ISVOID = 277;
  /** Token number, to be returned by the scanner.  */
  public static final int NEW = 278;
  /** Token number, to be returned by the scanner.  */
  public static final int OF = 279;
  /** Token number, to be returned by the scanner.  */
  public static final int LET = 280;
  /** Token number, to be returned by the scanner.  */
  public static final int EQUALS = 281;
  /** Token number, to be returned by the scanner.  */
  public static final int LESSOREQUAL = 282;
  /** Token number, to be returned by the scanner.  */
  public static final int LESS = 283;
  /** Token number, to be returned by the scanner.  */
  public static final int PLUS = 284;
  /** Token number, to be returned by the scanner.  */
  public static final int TIMES = 285;
  /** Token number, to be returned by the scanner.  */
  public static final int SLASH = 286;
  /** Token number, to be returned by the scanner.  */
  public static final int MINUS = 287;
  /** Token number, to be returned by the scanner.  */
  public static final int ATSIGN = 288;
  /** Token number, to be returned by the scanner.  */
  public static final int TILDE = 289;
  /** Token number, to be returned by the scanner.  */
  public static final int QUEST = 290;
  /** Token number, to be returned by the scanner.  */
  public static final int EXCLAM = 291;
  /** Token number, to be returned by the scanner.  */
  public static final int LPARENT = 292;
  /** Token number, to be returned by the scanner.  */
  public static final int RPARENT = 293;
  /** Token number, to be returned by the scanner.  */
  public static final int LSQUARE = 294;
  /** Token number, to be returned by the scanner.  */
  public static final int RSQUARE = 295;
  /** Token number, to be returned by the scanner.  */
  public static final int LCURLY = 296;
  /** Token number, to be returned by the scanner.  */
  public static final int RCURLY = 297;
  /** Token number, to be returned by the scanner.  */
  public static final int SEMICOL = 298;
  /** Token number, to be returned by the scanner.  */
  public static final int COLON = 299;
  /** Token number, to be returned by the scanner.  */
  public static final int COMMA = 300;
  /** Token number, to be returned by the scanner.  */
  public static final int ERROR = 301;
  /** Token number, to be returned by the scanner.  */
  public static final int STRING = 302;
  /** Token number, to be returned by the scanner.  */
  public static final int DOT = 303;
  /** Token number, to be returned by the scanner.  */
  public static final int FARROW = 304;
  /** Token number, to be returned by the scanner.  */
  public static final int BARROW = 305;



  

  /**
   * Communication interface between the scanner and the Bison-generated
   * parser <tt>Parser</tt>.
   */
  public interface Lexer {
    

    /**
     * Method to retrieve the semantic value of the last scanned token.
     * @return the semantic value of the last scanned token.  */
    AstNode getLVal ();

    /**
     * Entry point for the scanner.  Returns the token identifier corresponding
     * to the next token and prepares to return the semantic value
     * of the token. 
     * @return the token identifier corresponding to the next token. */
    int yylex () throws java.io.IOException;

    /**
     * Entry point for error reporting.  Emits an error
     * in a user-defined way.
     *
     * 
     * @param s The string for the error message.  */
     void yyerror (String s);
  }

  /** The object doing lexical analysis for us.  */
  private Lexer yylexer;
  
  



  /**
   * Instantiates the Bison-generated parser.
   * @param yylexer The scanner that will supply tokens to the parser.
   */
  public Parser (Lexer yylexer) {
    this.yylexer = yylexer;
    
  }

  private java.io.PrintStream yyDebugStream = System.err;

  /**
   * Return the <tt>PrintStream</tt> on which the debugging output is
   * printed.
   */
  public final java.io.PrintStream getDebugStream () { return yyDebugStream; }

  /**
   * Set the <tt>PrintStream</tt> on which the debug output is printed.
   * @param s The stream that is used for debugging output.
   */
  public final void setDebugStream(java.io.PrintStream s) { yyDebugStream = s; }

  private int yydebug = 0;

  /**
   * Answer the verbosity of the debugging output; 0 means that all kinds of
   * output from the parser are suppressed.
   */
  public final int getDebugLevel() { return yydebug; }

  /**
   * Set the verbosity of the debugging output; 0 means that all kinds of
   * output from the parser are suppressed.
   * @param level The verbosity level for debugging output.
   */
  public final void setDebugLevel(int level) { yydebug = level; }

  private final int yylex () throws java.io.IOException {
    return yylexer.yylex ();
  }
  protected final void yyerror (String s) {
    yylexer.yyerror (s);
  }

  

  protected final void yycdebug (String s) {
    if (yydebug > 0)
      yyDebugStream.println (s);
  }

  private final class YYStack {
    private int[] stateStack = new int[16];
    
    private AstNode[] valueStack = new AstNode[16];

    public int size = 16;
    public int height = -1;
    
    public final void push (int state, AstNode value    	   	      	    ) {
      height++;
      if (size == height) 
        {
	  int[] newStateStack = new int[size * 2];
	  System.arraycopy (stateStack, 0, newStateStack, 0, height);
	  stateStack = newStateStack;
	  
	  
	  AstNode[] newValueStack = new AstNode[size * 2];
	  System.arraycopy (valueStack, 0, newValueStack, 0, height);
	  valueStack = newValueStack;

	  size *= 2;
	}

      stateStack[height] = state;
      
      valueStack[height] = value;
    }

    public final void pop () {
      height--;
    }

    public final void pop (int num) {
      // Avoid memory leaks... garbage collection is a white lie!
      if (num > 0) {
	java.util.Arrays.fill (valueStack, height - num + 1, height, null);
        
      }
      height -= num;
    }

    public final int stateAt (int i) {
      return stateStack[height - i];
    }

    public final AstNode valueAt (int i) {
      return valueStack[height - i];
    }

    // Print the state stack on the debug stream.
    public void print (java.io.PrintStream out)
    {
      out.print ("Stack now");
      
      for (int i = 0; i < height; i++)
        {
	  out.print (' ');
	  out.print (stateStack[i]);
        }
      out.println ();
    }
  }

  /**
   * Returned by a Bison action in order to stop the parsing process and
   * return success (<tt>true</tt>).  */
  public static final int YYACCEPT = 0;

  /**
   * Returned by a Bison action in order to stop the parsing process and
   * return failure (<tt>false</tt>).  */
  public static final int YYABORT = 1;

  /**
   * Returned by a Bison action in order to start error recovery without
   * printing an error message.  */
  public static final int YYERROR = 2;

  /**
   * Returned by a Bison action in order to print an error message and start
   * error recovery.  */
  public static final int YYFAIL = 3;

  private static final int YYNEWSTATE = 4;
  private static final int YYDEFAULT = 5;
  private static final int YYREDUCE = 6;
  private static final int YYERRLAB1 = 7;
  private static final int YYRETURN = 8;

  private int yyerrstatus_ = 0;

  /**
   * Return whether error recovery is being done.  In this state, the parser
   * reads token until it reaches a known state, and then restarts normal
   * operation.  */
  public final boolean recovering ()
  {
    return yyerrstatus_ == 0;
  }

  private int yyaction (int yyn, YYStack yystack, int yylen) 
  {
    AstNode yyval;
    

    /* If YYLEN is nonzero, implement the default value of the action:
       `$$ = $1'.  Otherwise, use the top of the stack.
    
       Otherwise, the following line sets YYVAL to garbage.
       This behavior is undocumented and Bison
       users should not rely upon it.  */
    if (yylen > 0)
      yyval = yystack.valueAt (yylen - 1);
    else
      yyval = yystack.valueAt (0);
    
    yy_reduce_print (yyn, yystack);

    switch (yyn)
      {
	  case 2:
  if (yyn == 2)
    
/* Line 353 of lalr1.java  */
/* Line 97 of "cool.y"  */
    { root = ((AstNode)(yystack.valueAt (1-(1))));};
  break;
    

  case 3:
  if (yyn == 3)
    
/* Line 353 of lalr1.java  */
/* Line 98 of "cool.y"  */
    { root = ((AstNode)(yystack.valueAt (1-(1))));};
  break;
    

  case 4:
  if (yyn == 4)
    
/* Line 353 of lalr1.java  */
/* Line 102 of "cool.y"  */
    { yyval = new AstNode("program"); yyval.addChild(((AstNode)(yystack.valueAt (1-(1)))));};
  break;
    

  case 5:
  if (yyn == 5)
    
/* Line 353 of lalr1.java  */
/* Line 107 of "cool.y"  */
    { yyval = ((AstNode)(yystack.valueAt (2-(1))));};
  break;
    

  case 6:
  if (yyn == 6)
    
/* Line 353 of lalr1.java  */
/* Line 108 of "cool.y"  */
    { yyval = ((AstNode)(yystack.valueAt (3-(1)))); ((AstNode)(yystack.valueAt (3-(1)))).addSibling(((AstNode)(yystack.valueAt (3-(2))))); };
  break;
    

  case 7:
  if (yyn == 7)
    
/* Line 353 of lalr1.java  */
/* Line 112 of "cool.y"  */
    { yyval =  new AstNode("class "+((AstNode)(yystack.valueAt (7-(2)))).tag+" : "+((AstNode)(yystack.valueAt (7-(4)))).tag); yyval.addChild(((AstNode)(yystack.valueAt (7-(6)))));};
  break;
    

  case 8:
  if (yyn == 8)
    
/* Line 353 of lalr1.java  */
/* Line 113 of "cool.y"  */
    { yyval =  new AstNode("class "+((AstNode)(yystack.valueAt (5-(2)))).tag); yyval.addChild(((AstNode)(yystack.valueAt (5-(4)))));};
  break;
    

  case 9:
  if (yyn == 9)
    
/* Line 353 of lalr1.java  */
/* Line 117 of "cool.y"  */
    {yyval = null;};
  break;
    

  case 10:
  if (yyn == 10)
    
/* Line 353 of lalr1.java  */
/* Line 118 of "cool.y"  */
    { yyval = ((AstNode)(yystack.valueAt (1-(1))));};
  break;
    

  case 11:
  if (yyn == 11)
    
/* Line 353 of lalr1.java  */
/* Line 122 of "cool.y"  */
    { yyval = ((AstNode)(yystack.valueAt (2-(1)))); };
  break;
    

  case 12:
  if (yyn == 12)
    
/* Line 353 of lalr1.java  */
/* Line 123 of "cool.y"  */
    { yyval = ((AstNode)(yystack.valueAt (3-(1)))); ((AstNode)(yystack.valueAt (3-(1)))).addSibling(((AstNode)(yystack.valueAt (3-(2))))); };
  break;
    

  case 13:
  if (yyn == 13)
    
/* Line 353 of lalr1.java  */
/* Line 127 of "cool.y"  */
    { yyval = new AstNode("method "+((AstNode)(yystack.valueAt (9-(1)))).tag+" : "+((AstNode)(yystack.valueAt (9-(3)))).tag+((AstNode)(yystack.valueAt (9-(6)))).tag); yyval.addChild(((AstNode)(yystack.valueAt (9-(8)))));};
  break;
    

  case 14:
  if (yyn == 14)
    
/* Line 353 of lalr1.java  */
/* Line 128 of "cool.y"  */
    { yyval = new AstNode("field "+((AstNode)(yystack.valueAt (5-(3)))).tag+" "+((AstNode)(yystack.valueAt (5-(1)))).tag); yyval.addChild(((AstNode)(yystack.valueAt (5-(5)))));};
  break;
    

  case 15:
  if (yyn == 15)
    
/* Line 353 of lalr1.java  */
/* Line 129 of "cool.y"  */
    { yyval = new AstNode("field "+((AstNode)(yystack.valueAt (3-(3)))).tag+" "+((AstNode)(yystack.valueAt (3-(1)))).tag);};
  break;
    

  case 16:
  if (yyn == 16)
    
/* Line 353 of lalr1.java  */
/* Line 134 of "cool.y"  */
    {yyval = new AstNode("");};
  break;
    

  case 17:
  if (yyn == 17)
    
/* Line 353 of lalr1.java  */
/* Line 135 of "cool.y"  */
    { yyval = ((AstNode)(yystack.valueAt (1-(1))));};
  break;
    

  case 18:
  if (yyn == 18)
    
/* Line 353 of lalr1.java  */
/* Line 139 of "cool.y"  */
    {yyval = new AstNode(((AstNode)(yystack.valueAt (1-(1)))).tag);};
  break;
    

  case 19:
  if (yyn == 19)
    
/* Line 353 of lalr1.java  */
/* Line 140 of "cool.y"  */
    { yyval = new AstNode(((AstNode)(yystack.valueAt (3-(1)))).tag+((AstNode)(yystack.valueAt (3-(3)))).tag);};
  break;
    

  case 20:
  if (yyn == 20)
    
/* Line 353 of lalr1.java  */
/* Line 144 of "cool.y"  */
    { yyval = new AstNode(((AstNode)(yystack.valueAt (3-(3)))).tag+" "+((AstNode)(yystack.valueAt (3-(1)))).tag+" -> ");};
  break;
    

  case 21:
  if (yyn == 21)
    
/* Line 353 of lalr1.java  */
/* Line 148 of "cool.y"  */
    {yyval = null;};
  break;
    

  case 22:
  if (yyn == 22)
    
/* Line 353 of lalr1.java  */
/* Line 149 of "cool.y"  */
    { yyval = ((AstNode)(yystack.valueAt (1-(1))));};
  break;
    

  case 23:
  if (yyn == 23)
    
/* Line 353 of lalr1.java  */
/* Line 153 of "cool.y"  */
    {yyval = ((AstNode)(yystack.valueAt (1-(1))));};
  break;
    

  case 24:
  if (yyn == 24)
    
/* Line 353 of lalr1.java  */
/* Line 154 of "cool.y"  */
    { yyval = ((AstNode)(yystack.valueAt (3-(1)))); ((AstNode)(yystack.valueAt (3-(1)))).addSibling(((AstNode)(yystack.valueAt (3-(3))))); };
  break;
    

  case 25:
  if (yyn == 25)
    
/* Line 353 of lalr1.java  */
/* Line 157 of "cool.y"  */
    { yyval = ((AstNode)(yystack.valueAt (2-(1))));};
  break;
    

  case 26:
  if (yyn == 26)
    
/* Line 353 of lalr1.java  */
/* Line 158 of "cool.y"  */
    {yyval = ((AstNode)(yystack.valueAt (3-(1))));  yyval.addSibling(((AstNode)(yystack.valueAt (3-(2)))));};
  break;
    

  case 27:
  if (yyn == 27)
    
/* Line 353 of lalr1.java  */
/* Line 162 of "cool.y"  */
    {yyval = ((AstNode)(yystack.valueAt (1-(1))));};
  break;
    

  case 28:
  if (yyn == 28)
    
/* Line 353 of lalr1.java  */
/* Line 163 of "cool.y"  */
    { yyval = ((AstNode)(yystack.valueAt (3-(1)))); ((AstNode)(yystack.valueAt (3-(1)))).addSibling(((AstNode)(yystack.valueAt (3-(3))))); };
  break;
    

  case 29:
  if (yyn == 29)
    
/* Line 353 of lalr1.java  */
/* Line 167 of "cool.y"  */
    {yyval = new AstNode(((AstNode)(yystack.valueAt (3-(3)))).tag+" "+((AstNode)(yystack.valueAt (3-(1)))).tag);};
  break;
    

  case 30:
  if (yyn == 30)
    
/* Line 353 of lalr1.java  */
/* Line 168 of "cool.y"  */
    {yyval = new AstNode(((AstNode)(yystack.valueAt (5-(3)))).tag+" "+((AstNode)(yystack.valueAt (5-(1)))).tag); yyval.addChild(((AstNode)(yystack.valueAt (5-(5)))));};
  break;
    

  case 31:
  if (yyn == 31)
    
/* Line 353 of lalr1.java  */
/* Line 173 of "cool.y"  */
    {yyval = ((AstNode)(yystack.valueAt (1-(1))));};
  break;
    

  case 32:
  if (yyn == 32)
    
/* Line 353 of lalr1.java  */
/* Line 174 of "cool.y"  */
    { yyval = ((AstNode)(yystack.valueAt (2-(1)))); ((AstNode)(yystack.valueAt (2-(1)))).addSibling(((AstNode)(yystack.valueAt (2-(2))))); };
  break;
    

  case 33:
  if (yyn == 33)
    
/* Line 353 of lalr1.java  */
/* Line 178 of "cool.y"  */
    { yyval = new AstNode("case "+((AstNode)(yystack.valueAt (6-(3)))).tag+" "+((AstNode)(yystack.valueAt (6-(1)))).tag); yyval.addChild(((AstNode)(yystack.valueAt (6-(5)))));};
  break;
    

  case 34:
  if (yyn == 34)
    
/* Line 353 of lalr1.java  */
/* Line 185 of "cool.y"  */
    {yyval = ((AstNode)(yystack.valueAt (3-(2))));};
  break;
    

  case 35:
  if (yyn == 35)
    
/* Line 353 of lalr1.java  */
/* Line 187 of "cool.y"  */
    { yyval = new AstNode("new "+((AstNode)(yystack.valueAt (2-(2)))).tag);};
  break;
    

  case 36:
  if (yyn == 36)
    
/* Line 353 of lalr1.java  */
/* Line 188 of "cool.y"  */
    { yyval  = new AstNode("unary isvoid"); yyval.addChild(((AstNode)(yystack.valueAt (2-(2)))));};
  break;
    

  case 37:
  if (yyn == 37)
    
/* Line 353 of lalr1.java  */
/* Line 189 of "cool.y"  */
    { yyval  = new AstNode("binary <"); yyval.addChild(((AstNode)(yystack.valueAt (3-(1))))); yyval.addChild(((AstNode)(yystack.valueAt (3-(3)))));};
  break;
    

  case 38:
  if (yyn == 38)
    
/* Line 353 of lalr1.java  */
/* Line 190 of "cool.y"  */
    { yyval  = new AstNode("binary <="); yyval.addChild(((AstNode)(yystack.valueAt (3-(1))))); yyval.addChild(((AstNode)(yystack.valueAt (3-(3)))));};
  break;
    

  case 39:
  if (yyn == 39)
    
/* Line 353 of lalr1.java  */
/* Line 191 of "cool.y"  */
    { yyval  = new AstNode("binary ="); yyval.addChild(((AstNode)(yystack.valueAt (3-(1))))); yyval.addChild(((AstNode)(yystack.valueAt (3-(3)))));};
  break;
    

  case 40:
  if (yyn == 40)
    
/* Line 353 of lalr1.java  */
/* Line 192 of "cool.y"  */
    { yyval  = new AstNode("binary +"); yyval.addChild(((AstNode)(yystack.valueAt (3-(1))))); yyval.addChild(((AstNode)(yystack.valueAt (3-(3)))));};
  break;
    

  case 41:
  if (yyn == 41)
    
/* Line 353 of lalr1.java  */
/* Line 193 of "cool.y"  */
    { yyval  = new AstNode("binary -"); yyval.addChild(((AstNode)(yystack.valueAt (3-(1))))); yyval.addChild(((AstNode)(yystack.valueAt (3-(3)))));};
  break;
    

  case 42:
  if (yyn == 42)
    
/* Line 353 of lalr1.java  */
/* Line 194 of "cool.y"  */
    { yyval  = new AstNode("binary *"); yyval.addChild(((AstNode)(yystack.valueAt (3-(1))))); yyval.addChild(((AstNode)(yystack.valueAt (3-(3)))));};
  break;
    

  case 43:
  if (yyn == 43)
    
/* Line 353 of lalr1.java  */
/* Line 195 of "cool.y"  */
    { yyval  = new AstNode("binary /"); yyval.addChild(((AstNode)(yystack.valueAt (3-(1))))); yyval.addChild(((AstNode)(yystack.valueAt (3-(3)))));};
  break;
    

  case 44:
  if (yyn == 44)
    
/* Line 353 of lalr1.java  */
/* Line 196 of "cool.y"  */
    { yyval  = new AstNode("unary not"); yyval.addChild(((AstNode)(yystack.valueAt (2-(2)))));};
  break;
    

  case 45:
  if (yyn == 45)
    
/* Line 353 of lalr1.java  */
/* Line 197 of "cool.y"  */
    { yyval  = new AstNode("unary ~"); yyval.addChild(((AstNode)(yystack.valueAt (2-(2)))));};
  break;
    

  case 46:
  if (yyn == 46)
    
/* Line 353 of lalr1.java  */
/* Line 198 of "cool.y"  */
    { yyval = new AstNode("assign "+((AstNode)(yystack.valueAt (3-(1)))).tag);  yyval.addChild(((AstNode)(yystack.valueAt (3-(3)))));};
  break;
    

  case 47:
  if (yyn == 47)
    
/* Line 353 of lalr1.java  */
/* Line 200 of "cool.y"  */
    { yyval =  new AstNode("id "+((AstNode)(yystack.valueAt (1-(1)))).tag);};
  break;
    

  case 48:
  if (yyn == 48)
    
/* Line 353 of lalr1.java  */
/* Line 201 of "cool.y"  */
    { yyval = new AstNode("int "+((AstNode)(yystack.valueAt (1-(1)))).tag);};
  break;
    

  case 49:
  if (yyn == 49)
    
/* Line 353 of lalr1.java  */
/* Line 202 of "cool.y"  */
    { yyval = new AstNode("str \""+((AstNode)(yystack.valueAt (1-(1)))).tag+"\"");};
  break;
    

  case 50:
  if (yyn == 50)
    
/* Line 353 of lalr1.java  */
/* Line 203 of "cool.y"  */
    { yyval = new AstNode("bool "+((AstNode)(yystack.valueAt (1-(1)))).tag);};
  break;
    

  case 51:
  if (yyn == 51)
    
/* Line 353 of lalr1.java  */
/* Line 206 of "cool.y"  */
    {
	yyval = new AstNode("call "+((AstNode)(yystack.valueAt (8-(5)))).tag+" as "+((AstNode)(yystack.valueAt (8-(3)))).tag);
	AstNode acallee = new AstNode("callee");
	acallee.addChild(((AstNode)(yystack.valueAt (8-(1)))));
	yyval.addChild(acallee);
	AstNode arg_list = ((AstNode)(yystack.valueAt (8-(7))));
	if(arg_list != null)
	{AstNode aargs = new AstNode("args");
	aargs.addChild(((AstNode)(yystack.valueAt (8-(7)))));
	yyval.addChild(aargs);}
	};
  break;
    

  case 52:
  if (yyn == 52)
    
/* Line 353 of lalr1.java  */
/* Line 220 of "cool.y"  */
    {
	yyval = new AstNode("call "+((AstNode)(yystack.valueAt (6-(3)))).tag);
	AstNode acallee = new AstNode("callee");
	acallee.addChild(((AstNode)(yystack.valueAt (6-(1)))));
	yyval.addChild(acallee);
	AstNode arg_list = ((AstNode)(yystack.valueAt (6-(5))));
	if(arg_list != null)
	{AstNode aargs = new AstNode("args");
	aargs.addChild(((AstNode)(yystack.valueAt (6-(5)))));
	yyval.addChild(aargs);}
	};
  break;
    

  case 53:
  if (yyn == 53)
    
/* Line 353 of lalr1.java  */
/* Line 233 of "cool.y"  */
    {
	yyval = new AstNode("call "+((AstNode)(yystack.valueAt (4-(1)))).tag);
	AstNode arg_list = ((AstNode)(yystack.valueAt (4-(3))));
	if(arg_list != null)
	{AstNode aargs = new AstNode("args");
	aargs.addChild(((AstNode)(yystack.valueAt (4-(3)))));
	yyval.addChild(aargs);}
	};
  break;
    

  case 54:
  if (yyn == 54)
    
/* Line 353 of lalr1.java  */
/* Line 243 of "cool.y"  */
    {AstNode aif = new AstNode("if");
		AstNode athen = new AstNode("then");
		AstNode aelse = new AstNode("else");
		aif.addSibling(athen); aif.addSibling(aelse);
		aif.addChild(((AstNode)(yystack.valueAt (7-(2))))); athen.addChild(((AstNode)(yystack.valueAt (7-(4))))); aelse.addChild(((AstNode)(yystack.valueAt (7-(6)))));
		yyval = aif;
		};
  break;
    

  case 55:
  if (yyn == 55)
    
/* Line 353 of lalr1.java  */
/* Line 252 of "cool.y"  */
    {AstNode awhile = new AstNode("while");
		AstNode aloop = new AstNode("loop");
		awhile.addSibling(aloop);
		awhile.addChild(((AstNode)(yystack.valueAt (5-(2)))));
		aloop.addChild(((AstNode)(yystack.valueAt (5-(4)))));
		yyval = awhile;
		};
  break;
    

  case 56:
  if (yyn == 56)
    
/* Line 353 of lalr1.java  */
/* Line 261 of "cool.y"  */
    {yyval = new AstNode("block");  yyval.addChild(((AstNode)(yystack.valueAt (3-(2)))));};
  break;
    

  case 57:
  if (yyn == 57)
    
/* Line 353 of lalr1.java  */
/* Line 264 of "cool.y"  */
    {
	AstNode alet = new AstNode("let");
	AstNode vars = new AstNode("vars");
	vars.addChild(((AstNode)(yystack.valueAt (4-(2)))));
	alet.addChild(vars);
	alet.addChild(((AstNode)(yystack.valueAt (4-(4)))));
	yyval = alet;
		
	};
  break;
    

  case 58:
  if (yyn == 58)
    
/* Line 353 of lalr1.java  */
/* Line 276 of "cool.y"  */
    {
	AstNode ainst = new AstNode("instanceof");
	ainst.addChild(((AstNode)(yystack.valueAt (5-(2)))));
	ainst.addChild(((AstNode)(yystack.valueAt (5-(4)))));
	yyval = ainst;	
	};
  break;
    



/* Line 353 of lalr1.java  */
/* Line 941 of "coolc/parser/Parser.java"  */
	default: break;
      }

    yy_symbol_print ("-> $$ =", yyr1_[yyn], yyval);

    yystack.pop (yylen);
    yylen = 0;

    /* Shift the result of the reduction.  */
    yyn = yyr1_[yyn];
    int yystate = yypgoto_[yyn - yyntokens_] + yystack.stateAt (0);
    if (0 <= yystate && yystate <= yylast_
	&& yycheck_[yystate] == yystack.stateAt (0))
      yystate = yytable_[yystate];
    else
      yystate = yydefgoto_[yyn - yyntokens_];

    yystack.push (yystate, yyval);
    return YYNEWSTATE;
  }

  /* Return YYSTR after stripping away unnecessary quotes and
     backslashes, so that it's suitable for yyerror.  The heuristic is
     that double-quoting is unnecessary unless the string contains an
     apostrophe, a comma, or backslash (other than backslash-backslash).
     YYSTR is taken from yytname.  */
  private final String yytnamerr_ (String yystr)
  {
    if (yystr.charAt (0) == '"')
      {
        StringBuffer yyr = new StringBuffer ();
        strip_quotes: for (int i = 1; i < yystr.length (); i++)
          switch (yystr.charAt (i))
            {
            case '\'':
            case ',':
              break strip_quotes;

            case '\\':
	      if (yystr.charAt(++i) != '\\')
                break strip_quotes;
              /* Fall through.  */
            default:
              yyr.append (yystr.charAt (i));
              break;

            case '"':
              return yyr.toString ();
            }
      }
    else if (yystr.equals ("$end"))
      return "end of input";

    return yystr;
  }

  /*--------------------------------.
  | Print this symbol on YYOUTPUT.  |
  `--------------------------------*/

  private void yy_symbol_print (String s, int yytype,
			         AstNode yyvaluep				 )
  {
    if (yydebug > 0)
    yycdebug (s + (yytype < yyntokens_ ? " token " : " nterm ")
	      + yytname_[yytype] + " ("
	      + (yyvaluep == null ? "(null)" : yyvaluep.toString ()) + ")");
  }

  /**
   * Parse input from the scanner that was specified at object construction
   * time.  Return whether the end of the input was reached successfully.
   *
   * @return <tt>true</tt> if the parsing succeeds.  Note that this does not
   *          imply that there were no syntax errors.
   */
  public boolean parse () throws java.io.IOException
  {
    /// Lookahead and lookahead in internal form.
    int yychar = yyempty_;
    int yytoken = 0;

    /* State.  */
    int yyn = 0;
    int yylen = 0;
    int yystate = 0;

    YYStack yystack = new YYStack ();

    /* Error handling.  */
    int yynerrs_ = 0;
    

    /// Semantic value of the lookahead.
    AstNode yylval = null;

    int yyresult;

    yycdebug ("Starting parse\n");
    yyerrstatus_ = 0;


    /* Initialize the stack.  */
    yystack.push (yystate, yylval);

    int label = YYNEWSTATE;
    for (;;)
      switch (label)
      {
        /* New state.  Unlike in the C/C++ skeletons, the state is already
	   pushed when we come here.  */
      case YYNEWSTATE:
        yycdebug ("Entering state " + yystate + "\n");
        if (yydebug > 0)
          yystack.print (yyDebugStream);
    
        /* Accept?  */
        if (yystate == yyfinal_)
          return true;
    
        /* Take a decision.  First try without lookahead.  */
        yyn = yypact_[yystate];
        if (yyn == yypact_ninf_)
          {
            label = YYDEFAULT;
	    break;
          }
    
        /* Read a lookahead token.  */
        if (yychar == yyempty_)
          {
	    yycdebug ("Reading a token: ");
	    yychar = yylex ();
            
            yylval = yylexer.getLVal ();
          }
    
        /* Convert token to internal form.  */
        if (yychar <= EOF)
          {
	    yychar = yytoken = EOF;
	    yycdebug ("Now at end of input.\n");
          }
        else
          {
	    yytoken = yytranslate_ (yychar);
	    yy_symbol_print ("Next token is", yytoken,
	    		     yylval);
          }
    
        /* If the proper action on seeing token YYTOKEN is to reduce or to
           detect an error, take that action.  */
        yyn += yytoken;
        if (yyn < 0 || yylast_ < yyn || yycheck_[yyn] != yytoken)
          label = YYDEFAULT;
    
        /* <= 0 means reduce or error.  */
        else if ((yyn = yytable_[yyn]) <= 0)
          {
	    if (yyn == 0 || yyn == yytable_ninf_)
	      label = YYFAIL;
	    else
	      {
	        yyn = -yyn;
	        label = YYREDUCE;
	      }
          }
    
        else
          {
            /* Shift the lookahead token.  */
	    yy_symbol_print ("Shifting", yytoken,
	    		     yylval);
    
            /* Discard the token being shifted.  */
            yychar = yyempty_;
    
            /* Count tokens shifted since error; after three, turn off error
               status.  */
            if (yyerrstatus_ > 0)
              --yyerrstatus_;
    
            yystate = yyn;
            yystack.push (yystate, yylval);
            label = YYNEWSTATE;
          }
        break;
    
      /*-----------------------------------------------------------.
      | yydefault -- do the default action for the current state.  |
      `-----------------------------------------------------------*/
      case YYDEFAULT:
        yyn = yydefact_[yystate];
        if (yyn == 0)
          label = YYFAIL;
        else
          label = YYREDUCE;
        break;
    
      /*-----------------------------.
      | yyreduce -- Do a reduction.  |
      `-----------------------------*/
      case YYREDUCE:
        yylen = yyr2_[yyn];
        label = yyaction (yyn, yystack, yylen);
	yystate = yystack.stateAt (0);
        break;
    
      /*------------------------------------.
      | yyerrlab -- here on detecting error |
      `------------------------------------*/
      case YYFAIL:
        /* If not already recovering from an error, report this error.  */
        if (yyerrstatus_ == 0)
          {
	    ++yynerrs_;
	    yyerror (yysyntax_error (yystate, yytoken));
          }
    
        
        if (yyerrstatus_ == 3)
          {
	    /* If just tried and failed to reuse lookahead token after an
	     error, discard it.  */
    
	    if (yychar <= EOF)
	      {
	      /* Return failure if at end of input.  */
	      if (yychar == EOF)
	        return false;
	      }
	    else
	      yychar = yyempty_;
          }
    
        /* Else will try to reuse lookahead token after shifting the error
           token.  */
        label = YYERRLAB1;
        break;
    
      /*---------------------------------------------------.
      | errorlab -- error raised explicitly by YYERROR.  |
      `---------------------------------------------------*/
      case YYERROR:
    
        
        /* Do not reclaim the symbols of the rule which action triggered
           this YYERROR.  */
        yystack.pop (yylen);
        yylen = 0;
        yystate = yystack.stateAt (0);
        label = YYERRLAB1;
        break;
    
      /*-------------------------------------------------------------.
      | yyerrlab1 -- common code for both syntax error and YYERROR.  |
      `-------------------------------------------------------------*/
      case YYERRLAB1:
        yyerrstatus_ = 3;	/* Each real token shifted decrements this.  */
    
        for (;;)
          {
	    yyn = yypact_[yystate];
	    if (yyn != yypact_ninf_)
	      {
	        yyn += yyterror_;
	        if (0 <= yyn && yyn <= yylast_ && yycheck_[yyn] == yyterror_)
	          {
	            yyn = yytable_[yyn];
	            if (0 < yyn)
		      break;
	          }
	      }
    
	    /* Pop the current state because it cannot handle the error token.  */
	    if (yystack.height == 1)
	      return false;
    
	    
	    yystack.pop ();
	    yystate = yystack.stateAt (0);
	    if (yydebug > 0)
	      yystack.print (yyDebugStream);
          }
    
	

        /* Shift the error token.  */
        yy_symbol_print ("Shifting", yystos_[yyn],
			 yylval);
    
        yystate = yyn;
	yystack.push (yyn, yylval);
        label = YYNEWSTATE;
        break;
    
        /* Accept.  */
      case YYACCEPT:
        return true;
    
        /* Abort.  */
      case YYABORT:
        return false;
      }
  }

  // Generate an error message.
  private String yysyntax_error (int yystate, int tok)
  {
    if (errorVerbose)
      {
        int yyn = yypact_[yystate];
        if (yypact_ninf_ < yyn && yyn <= yylast_)
          {
	    StringBuffer res;

	    /* Start YYX at -YYN if negative to avoid negative indexes in
	       YYCHECK.  */
	    int yyxbegin = yyn < 0 ? -yyn : 0;

	    /* Stay within bounds of both yycheck and yytname.  */
	    int yychecklim = yylast_ - yyn + 1;
	    int yyxend = yychecklim < yyntokens_ ? yychecklim : yyntokens_;
	    int count = 0;
	    for (int x = yyxbegin; x < yyxend; ++x)
	      if (yycheck_[x + yyn] == x && x != yyterror_)
	        ++count;

	    // FIXME: This method of building the message is not compatible
	    // with internationalization.
	    res = new StringBuffer ("syntax error, unexpected ");
	    res.append (yytnamerr_ (yytname_[tok]));
	    if (count < 5)
	      {
	        count = 0;
	        for (int x = yyxbegin; x < yyxend; ++x)
	          if (yycheck_[x + yyn] == x && x != yyterror_)
		    {
		      res.append (count++ == 0 ? ", expecting " : " or ");
		      res.append (yytnamerr_ (yytname_[x]));
		    }
	      }
	    return res.toString ();
          }
      }

    return "syntax error";
  }


  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
  private static final short yypact_ninf_ = -72;
  private static final short yypact_[] =
  {
        55,   -35,   -72,   -72,   138,    13,   138,   138,   138,   138,
      15,    19,   138,   138,   138,   -72,    26,   -72,    25,    -5,
     316,   138,   138,   316,   -18,     1,   192,   223,   316,   -72,
       4,    -8,   -72,   -32,   231,   100,   254,   -72,    -4,   -72,
     138,   138,   138,   138,   138,   138,   138,    59,    61,    32,
      29,   316,   316,    66,    73,   138,   138,    75,    77,   138,
      19,   -72,   -72,   262,   -72,   -72,    21,    21,    21,    27,
     -32,   -32,    27,    35,    47,   -72,   138,    44,   -20,    45,
      73,    43,   169,   161,    46,    -1,   -72,    38,   316,   -72,
     -72,    85,   138,   316,    73,    87,    89,   -72,    52,   -72,
     -72,   138,    92,   -72,   -72,   138,    62,    60,    58,    65,
      74,    69,   -72,    53,   -72,   200,    67,   316,   138,   -72,
     -72,    99,    71,    87,   138,   -72,   138,    81,   -72,   106,
     -72,   316,   285,   -72,    79,   -72,   138,   293,   -72
  };

  /* YYDEFACT[S] -- default rule to reduce with in state S when YYTABLE
     doesn't specify something else to do.  Zero means the default is an
     error.  */
  private static final byte yydefact_[] =
  {
         0,    47,    48,    50,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    49,     0,     2,     4,     0,
       3,    21,     0,    44,     0,     0,     0,     0,    36,    35,
       0,     0,    27,    45,     0,     0,     0,     1,     0,     5,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      22,    23,    46,     0,     9,     0,     0,     0,     0,     0,
       0,    34,    56,     0,    25,     6,    39,    38,    37,    40,
      42,    43,    41,     0,     0,    53,     0,     0,     0,     0,
      10,     0,     0,     0,     0,     0,    31,    29,    57,    28,
      26,     0,    21,    24,     9,    16,     0,     8,     0,    11,
      55,     0,     0,    58,    32,     0,     0,     0,     0,     0,
       0,    17,    18,    15,    12,     0,     0,    30,    21,    52,
       7,     0,     0,     0,     0,    54,     0,     0,    20,     0,
      19,    14,     0,    51,     0,    33,     0,     0,    13
  };

  /* YYPGOTO[NTERM-NUM].  */
  private static final byte yypgoto_[] =
  {
       -72,   -72,   -72,   -72,   103,    33,   -72,    48,   -72,   -72,
       6,   -71,   -72,   -72,   -72,    70,   -72,    50,     0
  };

  /* YYDEFGOTO[NTERM-NUM].  */
  private static final byte
  yydefgoto_[] =
  {
        -1,    16,    17,    18,    19,    79,    80,    81,   110,   111,
     112,    49,    50,    35,    31,    32,    85,    86,    51
  };

  /* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule which
     number is the opposite.  If zero, do what YYDEFACT says.  */
  private static final short yytable_ninf_ = -1;
  private static final short
  yytable_[] =
  {
        20,    47,    21,    53,    23,    84,    25,    26,    27,    28,
      55,    59,    33,    34,    36,    22,    48,    95,    24,   103,
      29,   107,    52,    54,    96,    30,    37,    40,    41,    42,
      43,    44,    45,    46,    47,    63,     5,    60,    39,    65,
      66,    67,    68,    69,    70,    71,    72,   127,    58,    48,
      43,    44,    45,    46,    47,    82,    83,    44,    45,    88,
      47,     1,     2,     3,    73,     4,     5,    74,     6,    48,
      75,    77,     7,     8,    76,    48,    93,     9,    10,    78,
      11,    84,    87,    91,    92,    94,    99,    97,   105,    12,
     102,   106,    13,   109,   113,   114,    14,   116,   119,   118,
     120,   115,    15,   124,   128,   117,     1,     2,     3,   121,
       4,   134,   122,     6,   123,   129,   126,     7,     8,   133,
     136,    38,     9,    10,   131,    11,   132,   108,    98,   130,
      89,     0,     0,     0,    12,   104,   137,    13,     0,     0,
       0,    14,    62,     0,     1,     2,     3,    15,     4,     0,
       0,     6,     0,     0,     0,     7,     8,     0,     0,     0,
       9,    10,     0,    11,     0,     0,     0,     0,     0,     0,
       0,     0,    12,   101,     0,    13,     0,     0,     0,    14,
       0,     0,     0,   100,     0,    15,     0,    40,    41,    42,
      43,    44,    45,    46,    47,    40,    41,    42,    43,    44,
      45,    46,    47,     0,     0,     0,     0,    56,     0,    48,
       0,     0,     0,     0,     0,     0,   125,    48,    40,    41,
      42,    43,    44,    45,    46,    47,    40,    41,    42,    43,
      44,    45,    46,    47,     0,     0,     0,     0,     0,     0,
      48,     0,     0,     0,     0,     0,     0,    57,    48,    40,
      41,    42,    43,    44,    45,    46,    47,    40,    41,    42,
      43,    44,    45,    46,    47,     0,     0,     0,     0,    61,
       0,    48,     0,     0,     0,     0,     0,     0,     0,    48,
      40,    41,    42,    43,    44,    45,    46,    47,    40,    41,
      42,    43,    44,    45,    46,    47,     0,    64,     0,     0,
       0,     0,    48,     0,     0,    90,     0,     0,     0,     0,
      48,    40,    41,    42,    43,    44,    45,    46,    47,    40,
      41,    42,    43,    44,    45,    46,    47,     0,   135,     0,
       0,     0,     0,    48,     0,   138,     0,     0,     0,     0,
       0,    48,    40,    41,    42,    43,    44,    45,    46,    47,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    48
  };

  /* YYCHECK.  */
  private static final short
  yycheck_[] =
  {
         0,    33,    37,    21,     4,     6,     6,     7,     8,     9,
       9,    19,    12,    13,    14,    50,    48,    37,     5,    20,
       5,    92,    22,    41,    44,     6,     0,    26,    27,    28,
      29,    30,    31,    32,    33,    35,    11,    45,    43,    43,
      40,    41,    42,    43,    44,    45,    46,   118,    44,    48,
      29,    30,    31,    32,    33,    55,    56,    30,    31,    59,
      33,     6,     7,     8,     5,    10,    11,     6,    13,    48,
      38,     5,    17,    18,    45,    48,    76,    22,    23,     6,
      25,     6,     5,    48,    37,    41,    43,    42,    50,    34,
      44,     6,    37,     6,     5,    43,    41,     5,    38,    37,
      42,   101,    47,    50,     5,   105,     6,     7,     8,    44,
      10,     5,    38,    13,    45,    44,    49,    17,    18,    38,
      41,    18,    22,    23,   124,    25,   126,    94,    80,   123,
      60,    -1,    -1,    -1,    34,    85,   136,    37,    -1,    -1,
      -1,    41,    42,    -1,     6,     7,     8,    47,    10,    -1,
      -1,    13,    -1,    -1,    -1,    17,    18,    -1,    -1,    -1,
      22,    23,    -1,    25,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    34,    12,    -1,    37,    -1,    -1,    -1,    41,
      -1,    -1,    -1,    14,    -1,    47,    -1,    26,    27,    28,
      29,    30,    31,    32,    33,    26,    27,    28,    29,    30,
      31,    32,    33,    -1,    -1,    -1,    -1,    15,    -1,    48,
      -1,    -1,    -1,    -1,    -1,    -1,    16,    48,    26,    27,
      28,    29,    30,    31,    32,    33,    26,    27,    28,    29,
      30,    31,    32,    33,    -1,    -1,    -1,    -1,    -1,    -1,
      48,    -1,    -1,    -1,    -1,    -1,    -1,    24,    48,    26,
      27,    28,    29,    30,    31,    32,    33,    26,    27,    28,
      29,    30,    31,    32,    33,    -1,    -1,    -1,    -1,    38,
      -1,    48,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    48,
      26,    27,    28,    29,    30,    31,    32,    33,    26,    27,
      28,    29,    30,    31,    32,    33,    -1,    43,    -1,    -1,
      -1,    -1,    48,    -1,    -1,    43,    -1,    -1,    -1,    -1,
      48,    26,    27,    28,    29,    30,    31,    32,    33,    26,
      27,    28,    29,    30,    31,    32,    33,    -1,    43,    -1,
      -1,    -1,    -1,    48,    -1,    42,    -1,    -1,    -1,    -1,
      -1,    48,    26,    27,    28,    29,    30,    31,    32,    33,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    48
  };

  /* STOS_[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
  private static final byte
  yystos_[] =
  {
         0,     6,     7,     8,    10,    11,    13,    17,    18,    22,
      23,    25,    34,    37,    41,    47,    52,    53,    54,    55,
      69,    37,    50,    69,     5,    69,    69,    69,    69,     5,
       6,    65,    66,    69,    69,    64,    69,     0,    55,    43,
      26,    27,    28,    29,    30,    31,    32,    33,    48,    62,
      63,    69,    69,    21,    41,     9,    15,    24,    44,    19,
      45,    38,    42,    69,    43,    43,    69,    69,    69,    69,
      69,    69,    69,     5,     6,    38,    45,     5,     6,    56,
      57,    58,    69,    69,     6,    67,    68,     5,    69,    66,
      43,    48,    37,    69,    41,    37,    44,    42,    58,    43,
      14,    12,    44,    20,    68,    50,     6,    62,    56,     6,
      59,    60,    61,     5,    43,    69,     5,    69,    37,    38,
      42,    44,    38,    45,    50,    16,    49,    62,     5,    44,
      61,    69,    69,    38,     5,    43,    41,    69,    42
  };

  /* TOKEN_NUMBER_[YYLEX-NUM] -- Internal symbol number corresponding
     to YYLEX-NUM.  */
  private static final short
  yytoken_number_[] =
  {
         0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305
  };

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
  private static final byte
  yyr1_[] =
  {
         0,    51,    52,    52,    53,    54,    54,    55,    55,    56,
      56,    57,    57,    58,    58,    58,    59,    59,    60,    60,
      61,    62,    62,    63,    63,    64,    64,    65,    65,    66,
      66,    67,    67,    68,    69,    69,    69,    69,    69,    69,
      69,    69,    69,    69,    69,    69,    69,    69,    69,    69,
      69,    69,    69,    69,    69,    69,    69,    69,    69
  };

  /* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
  private static final byte
  yyr2_[] =
  {
         0,     2,     1,     1,     1,     2,     3,     7,     5,     0,
       1,     2,     3,     9,     5,     3,     0,     1,     1,     3,
       3,     0,     1,     1,     3,     2,     3,     1,     3,     3,
       5,     1,     2,     6,     3,     2,     2,     3,     3,     3,
       3,     3,     3,     3,     2,     2,     3,     1,     1,     1,
       1,     8,     6,     4,     7,     5,     3,     4,     5
  };

  /* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
     First, the terminals, then, starting at \a yyntokens_, nonterminals.  */
  private static final String yytname_[] =
  {
    "$end", "error", "$undefined", "\"not\"", "\"isvoid\"", "TYPE", "ID",
  "INT", "BOOL", "\"loop\"", "NOT", "CLASS", "ELSE", "WHILE", "POOL",
  "THEN", "FI", "IF", "CASE", "IN", "ESAC", "INHERITS", "ISVOID", "NEW",
  "OF", "LET", "\"=\"", "\"<=\"", "\"<\"", "\"+\"", "\"*\"", "\"/\"",
  "\"-\"", "\"@\"", "\"~\"", "\"?\"", "\"!\"", "\"(\"", "\")\"", "\"[\"",
  "\"]\"", "\"{\"", "\"}\"", "\";\"", "\":\"", "\",\"", "ERROR", "STRING",
  "\".\"", "\"=>\"", "\"<-\"", "$accept", "start", "program", "class_list",
  "clase", "feature_list", "feature_list_not_empty", "feature",
  "formal_list", "formal_list_not_empty", "formal", "expr_list",
  "expr_list_not_empty", "expr_semicol_list", "let_list", "let_asign",
  "id_type_farrow_list", "id_type_farrow", "expr", null
  };

  /* YYRHS -- A `-1'-separated list of the rules' RHS.  */
  private static final byte yyrhs_[] =
  {
        52,     0,    -1,    53,    -1,    69,    -1,    54,    -1,    55,
      43,    -1,    54,    55,    43,    -1,    11,     5,    21,     5,
      41,    56,    42,    -1,    11,     5,    41,    56,    42,    -1,
      -1,    57,    -1,    58,    43,    -1,    57,    58,    43,    -1,
       6,    37,    59,    38,    44,     5,    41,    69,    42,    -1,
       6,    44,     5,    50,    69,    -1,     6,    44,     5,    -1,
      -1,    60,    -1,    61,    -1,    60,    45,    61,    -1,     6,
      44,     5,    -1,    -1,    63,    -1,    69,    -1,    63,    45,
      69,    -1,    69,    43,    -1,    64,    69,    43,    -1,    66,
      -1,    65,    45,    66,    -1,     6,    44,     5,    -1,     6,
      44,     5,    50,    69,    -1,    68,    -1,    67,    68,    -1,
       6,    44,     5,    49,    69,    43,    -1,    37,    69,    38,
      -1,    23,     5,    -1,    22,    69,    -1,    69,    28,    69,
      -1,    69,    27,    69,    -1,    69,    26,    69,    -1,    69,
      29,    69,    -1,    69,    32,    69,    -1,    69,    30,    69,
      -1,    69,    31,    69,    -1,    10,    69,    -1,    34,    69,
      -1,     6,    50,    69,    -1,     6,    -1,     7,    -1,    47,
      -1,     8,    -1,    69,    33,     5,    48,     6,    37,    62,
      38,    -1,    69,    48,     6,    37,    62,    38,    -1,     6,
      37,    62,    38,    -1,    17,    69,    15,    69,    12,    69,
      16,    -1,    13,    69,     9,    69,    14,    -1,    41,    64,
      42,    -1,    25,    65,    19,    69,    -1,    18,    69,    24,
      67,    20,    -1
  };

  /* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
     YYRHS.  */
  private static final short yyprhs_[] =
  {
         0,     0,     3,     5,     7,     9,    12,    16,    24,    30,
      31,    33,    36,    40,    50,    56,    60,    61,    63,    65,
      69,    73,    74,    76,    78,    82,    85,    89,    91,    95,
      99,   105,   107,   110,   117,   121,   124,   127,   131,   135,
     139,   143,   147,   151,   155,   158,   161,   165,   167,   169,
     171,   173,   182,   189,   194,   202,   208,   212,   217
  };

  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
  private static final short yyrline_[] =
  {
         0,    97,    97,    98,   102,   107,   108,   112,   113,   117,
     118,   122,   123,   127,   128,   129,   134,   135,   139,   140,
     144,   148,   149,   153,   154,   157,   158,   162,   163,   167,
     168,   173,   174,   178,   185,   187,   188,   189,   190,   191,
     192,   193,   194,   195,   196,   197,   198,   200,   201,   202,
     203,   205,   219,   232,   242,   251,   261,   263,   275
  };

  // Report on the debug stream that the rule yyrule is going to be reduced.
  private void yy_reduce_print (int yyrule, YYStack yystack)
  {
    if (yydebug == 0)
      return;

    int yylno = yyrline_[yyrule];
    int yynrhs = yyr2_[yyrule];
    /* Print the symbols being reduced, and their result.  */
    yycdebug ("Reducing stack by rule " + (yyrule - 1)
	      + " (line " + yylno + "), ");

    /* The symbols being reduced.  */
    for (int yyi = 0; yyi < yynrhs; yyi++)
      yy_symbol_print ("   $" + (yyi + 1) + " =",
		       yyrhs_[yyprhs_[yyrule] + yyi],
		       ((yystack.valueAt (yynrhs-(yyi + 1)))));
  }

  /* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
  private static final byte yytranslate_table_[] =
  {
         0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50
  };

  private static final byte yytranslate_ (int t)
  {
    if (t >= 0 && t <= yyuser_token_number_max_)
      return yytranslate_table_[t];
    else
      return yyundef_token_;
  }

  private static final int yylast_ = 364;
  private static final int yynnts_ = 19;
  private static final int yyempty_ = -2;
  private static final int yyfinal_ = 37;
  private static final int yyterror_ = 1;
  private static final int yyerrcode_ = 256;
  private static final int yyntokens_ = 51;

  private static final int yyuser_token_number_max_ = 305;
  private static final int yyundef_token_ = 2;

/* User implementation code.  */
/* Unqualified %code blocks.  */

/* Line 875 of lalr1.java  */
/* Line 14 of "cool.y"  */


    private AstNode root;
    public AstNode getRoot() {
        return root;
    }

	public static void p(String x){ //System.out.println(x);
	}

    public static String getTokenName(int t) {
        return yytname_[t-255];
    }




/* Line 875 of lalr1.java  */
/* Line 1661 of "coolc/parser/Parser.java"  */

}


/* Line 879 of lalr1.java  */
/* Line 289 of "cool.y"  */

