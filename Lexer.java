/* The following code was generated by JFlex 1.4.3 on 05-04-13 03:40 PM */

package coolc.parser;


/**
 * This class is a scanner generated by 
 * <a href="http://www.jflex.de/">JFlex</a> 1.4.3
 * on 05-04-13 03:40 PM from the specification file
 * <tt>cool.l</tt>
 */
public class Lexer implements Parser.Lexer {

  /** This character denotes the end of file */
  public static final int YYEOF = -1;

  /** initial size of the lookahead buffer */
  private static final int ZZ_BUFFERSIZE = 16384;

  /** lexical states */
  public static final int STRING = 6;
  public static final int YYINITIAL = 0;
  public static final int SINGLE_LINE_COMMENT = 2;
  public static final int MULTI_LINE_COMMENT = 4;

  /**
   * ZZ_LEXSTATE[l] is the state in the DFA for the lexical state l
   * ZZ_LEXSTATE[l+1] is the state in the DFA for the lexical state l
   *                  at the beginning of a line
   * l is of the form l = 2*k, k a non negative integer
   */
  private static final int ZZ_LEXSTATE[] = { 
     0,  0,  1,  1,  2,  2,  3, 3
  };

  /** 
   * Translates characters to character classes
   */
  private static final String ZZ_CMAP_PACKED = 
    "\11\0\1\100\1\76\2\0\1\3\22\0\1\3\1\63\1\75\5\0"+
    "\1\7\1\64\1\10\1\56\1\73\1\6\1\74\1\57\12\2\1\72"+
    "\1\71\1\55\1\53\1\54\1\62\1\60\1\25\1\4\1\23\1\47"+
    "\1\31\1\41\1\4\1\35\1\37\2\4\1\11\1\4\1\17\1\13"+
    "\1\15\1\4\1\43\1\27\1\21\1\51\1\45\1\33\3\4\1\65"+
    "\1\77\1\66\1\0\1\1\1\0\1\26\1\5\1\24\1\50\1\32"+
    "\1\42\1\5\1\36\1\40\2\5\1\12\1\5\1\20\1\14\1\16"+
    "\1\5\1\44\1\30\1\22\1\52\1\46\1\34\3\5\1\67\1\0"+
    "\1\70\1\61\uff81\0";

  /** 
   * Translates characters to character classes
   */
  private static final char [] ZZ_CMAP = zzUnpackCMap(ZZ_CMAP_PACKED);

  /** 
   * Translates DFA states to action switch labels.
   */
  private static final int [] ZZ_ACTION = zzUnpackAction();

  private static final String ZZ_ACTION_PACKED_0 =
    "\4\0\1\1\1\2\1\3\1\4\1\5\1\6\1\7"+
    "\1\10\1\4\1\5\1\4\1\5\1\4\1\5\1\4"+
    "\1\5\1\4\1\5\1\4\1\5\1\4\1\5\1\4"+
    "\1\5\1\4\1\5\1\4\1\5\1\11\1\12\1\13"+
    "\1\14\1\15\1\16\1\17\1\20\1\21\1\22\1\23"+
    "\1\24\1\25\1\26\1\27\1\30\1\31\1\32\1\33"+
    "\2\3\1\34\1\35\1\36\1\34\1\37\1\40\1\41"+
    "\2\4\2\5\2\42\1\4\1\5\2\4\2\5\2\4"+
    "\2\5\2\4\2\5\2\4\2\5\1\4\1\5\1\43"+
    "\1\4\1\44\1\43\1\5\1\44\1\4\1\45\1\5"+
    "\1\45\1\46\1\47\1\50\1\51\1\52\1\53\1\54"+
    "\1\4\1\55\1\5\1\55\1\4\1\5\1\56\1\57"+
    "\1\56\1\57\2\4\2\5\2\4\2\5\2\4\2\5"+
    "\1\4\1\5\2\4\2\5\1\4\1\5\2\60\2\61"+
    "\1\62\1\63\1\62\1\63\1\4\1\64\1\5\1\64"+
    "\1\65\1\66\1\65\1\66\1\4\1\5\2\4\2\5"+
    "\2\67\2\70\2\4\2\5\1\4\1\71\1\5\1\71"+
    "\1\4\1\5\2\72";

  private static int [] zzUnpackAction() {
    int [] result = new int[171];
    int offset = 0;
    offset = zzUnpackAction(ZZ_ACTION_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAction(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /** 
   * Translates a state to a row index in the transition table
   */
  private static final int [] ZZ_ROWMAP = zzUnpackRowMap();

  private static final String ZZ_ROWMAP_PACKED_0 =
    "\0\0\0\101\0\202\0\303\0\u0104\0\u0145\0\u0104\0\u0186"+
    "\0\u01c7\0\u0208\0\u0249\0\u0104\0\u028a\0\u02cb\0\u030c\0\u034d"+
    "\0\u038e\0\u03cf\0\u0410\0\u0451\0\u0492\0\u04d3\0\u0514\0\u0555"+
    "\0\u0596\0\u05d7\0\u0618\0\u0659\0\u069a\0\u06db\0\u071c\0\u075d"+
    "\0\u079e\0\u07df\0\u0104\0\u0104\0\u0104\0\u0104\0\u0104\0\u0104"+
    "\0\u0104\0\u0104\0\u0104\0\u0104\0\u0104\0\u0104\0\u0104\0\u0104"+
    "\0\u0104\0\u0104\0\u0104\0\u0820\0\u0861\0\u0104\0\u0104\0\u0104"+
    "\0\u08a2\0\u0104\0\u0104\0\u0104\0\u08e3\0\u0924\0\u0965\0\u09a6"+
    "\0\u0186\0\u01c7\0\u09e7\0\u0a28\0\u0a69\0\u0aaa\0\u0aeb\0\u0b2c"+
    "\0\u0b6d\0\u0bae\0\u0bef\0\u0c30\0\u0c71\0\u0cb2\0\u0cf3\0\u0d34"+
    "\0\u0d75\0\u0db6\0\u0df7\0\u0e38\0\u0e79\0\u0eba\0\u0efb\0\u0f3c"+
    "\0\u0186\0\u0f7d\0\u0fbe\0\u01c7\0\u0fff\0\u0186\0\u1040\0\u01c7"+
    "\0\u0104\0\u0104\0\u0104\0\u0104\0\u0104\0\u0104\0\u0104\0\u1081"+
    "\0\u0186\0\u10c2\0\u01c7\0\u1103\0\u1144\0\u0186\0\u0186\0\u01c7"+
    "\0\u01c7\0\u1185\0\u11c6\0\u1207\0\u1248\0\u1289\0\u12ca\0\u130b"+
    "\0\u134c\0\u138d\0\u13ce\0\u140f\0\u1450\0\u1491\0\u14d2\0\u1513"+
    "\0\u1554\0\u1595\0\u15d6\0\u1617\0\u1658\0\u0186\0\u01c7\0\u0186"+
    "\0\u01c7\0\u0186\0\u0186\0\u01c7\0\u01c7\0\u1699\0\u0186\0\u16da"+
    "\0\u01c7\0\u0186\0\u0186\0\u01c7\0\u01c7\0\u171b\0\u175c\0\u179d"+
    "\0\u17de\0\u181f\0\u1860\0\u0186\0\u01c7\0\u0186\0\u01c7\0\u18a1"+
    "\0\u18e2\0\u1923\0\u1964\0\u19a5\0\u0186\0\u19e6\0\u01c7\0\u1a27"+
    "\0\u1a68\0\u0186\0\u01c7";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[171];
    int offset = 0;
    offset = zzUnpackRowMap(ZZ_ROWMAP_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackRowMap(String packed, int offset, int [] result) {
    int i = 0;  /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int high = packed.charAt(i++) << 16;
      result[j++] = high | packed.charAt(i++);
    }
    return j;
  }

  /** 
   * The transition table of the DFA
   */
  private static final int [] ZZ_TRANS = zzUnpackTrans();

  private static final String ZZ_TRANS_PACKED_0 =
    "\2\5\1\6\1\7\1\10\1\11\1\12\1\13\1\14"+
    "\1\15\1\16\1\17\1\20\1\21\1\22\1\23\1\24"+
    "\1\25\1\26\1\27\1\30\1\10\1\11\1\10\1\11"+
    "\1\31\1\32\1\33\1\34\1\10\1\11\1\35\1\36"+
    "\1\37\1\40\1\10\1\11\1\10\1\11\1\10\1\11"+
    "\1\10\1\11\1\41\1\5\1\42\1\43\1\44\1\45"+
    "\1\46\1\47\1\50\1\51\1\52\1\53\1\54\1\55"+
    "\1\56\1\57\1\60\1\61\1\62\1\7\1\5\77\7"+
    "\1\63\11\7\1\64\1\65\70\7\75\66\1\67\1\70"+
    "\1\71\1\72\103\0\1\6\77\0\2\10\1\0\2\10"+
    "\3\0\42\10\27\0\2\11\1\0\2\11\3\0\42\11"+
    "\34\0\1\73\102\0\1\74\71\0\2\10\1\0\2\10"+
    "\3\0\2\10\2\75\14\10\2\76\20\10\27\0\2\11"+
    "\1\0\2\11\3\0\2\11\2\77\14\11\2\100\20\11"+
    "\27\0\2\10\1\0\2\10\3\0\30\10\2\101\10\10"+
    "\27\0\2\11\1\0\2\11\3\0\30\11\2\102\10\11"+
    "\27\0\2\10\1\0\2\10\3\0\2\10\2\103\36\10"+
    "\27\0\2\11\1\0\2\11\3\0\2\11\2\104\36\11"+
    "\27\0\2\10\1\0\2\10\3\0\2\10\2\105\14\10"+
    "\2\106\20\10\27\0\2\11\1\0\2\11\3\0\2\11"+
    "\2\107\14\11\2\110\20\11\27\0\2\10\1\0\2\10"+
    "\3\0\24\10\2\111\4\10\2\112\6\10\27\0\2\11"+
    "\1\0\2\11\3\0\24\11\2\113\4\11\2\114\6\11"+
    "\27\0\2\10\1\0\2\10\3\0\2\115\12\10\2\116"+
    "\24\10\27\0\2\11\1\0\2\11\3\0\2\117\12\11"+
    "\2\120\24\11\27\0\2\10\1\0\2\10\3\0\2\121"+
    "\14\10\2\122\22\10\27\0\2\11\1\0\2\11\3\0"+
    "\2\123\14\11\2\124\22\11\27\0\2\10\1\0\2\10"+
    "\3\0\24\10\2\125\14\10\27\0\2\11\1\0\2\11"+
    "\3\0\24\11\2\126\14\11\27\0\2\10\1\0\2\10"+
    "\3\0\6\10\2\127\6\10\2\130\10\10\2\131\10\10"+
    "\27\0\2\11\1\0\2\11\3\0\6\11\2\132\6\11"+
    "\2\133\10\11\2\134\10\11\27\0\2\10\1\0\2\10"+
    "\3\0\14\10\2\135\10\10\2\136\12\10\27\0\2\11"+
    "\1\0\2\11\3\0\14\11\2\137\10\11\2\140\12\11"+
    "\102\0\1\141\32\0\1\142\44\0\1\143\35\0\1\144"+
    "\154\0\1\145\111\0\1\146\1\0\1\147\2\0\2\10"+
    "\1\0\2\10\3\0\2\10\2\150\36\10\27\0\2\10"+
    "\1\0\2\10\3\0\10\10\2\151\30\10\27\0\2\11"+
    "\1\0\2\11\3\0\2\11\2\152\36\11\27\0\2\11"+
    "\1\0\2\11\3\0\10\11\2\153\30\11\27\0\2\10"+
    "\1\0\2\10\3\0\2\10\2\154\36\10\27\0\2\11"+
    "\1\0\2\11\3\0\2\11\2\155\36\11\27\0\2\10"+
    "\1\0\2\10\3\0\10\10\2\156\30\10\27\0\2\10"+
    "\1\0\2\10\3\0\22\10\2\157\16\10\27\0\2\11"+
    "\1\0\2\11\3\0\10\11\2\160\30\11\27\0\2\11"+
    "\1\0\2\11\3\0\22\11\2\161\16\11\27\0\2\10"+
    "\1\0\2\10\3\0\20\10\2\162\20\10\27\0\2\10"+
    "\1\0\2\10\3\0\40\10\2\163\27\0\2\11\1\0"+
    "\2\11\3\0\20\11\2\164\20\11\27\0\2\11\1\0"+
    "\2\11\3\0\40\11\2\165\27\0\2\10\1\0\2\10"+
    "\3\0\14\10\2\166\24\10\27\0\2\10\1\0\2\10"+
    "\3\0\16\10\2\167\22\10\27\0\2\11\1\0\2\11"+
    "\3\0\14\11\2\170\24\11\27\0\2\11\1\0\2\11"+
    "\3\0\16\11\2\171\22\11\27\0\2\10\1\0\2\10"+
    "\3\0\16\10\2\172\22\10\27\0\2\10\1\0\2\10"+
    "\3\0\14\10\2\173\24\10\27\0\2\11\1\0\2\11"+
    "\3\0\16\11\2\174\22\11\27\0\2\11\1\0\2\11"+
    "\3\0\14\11\2\175\24\11\27\0\2\10\1\0\2\10"+
    "\3\0\26\10\2\176\12\10\27\0\2\11\1\0\2\11"+
    "\3\0\26\11\2\177\12\11\27\0\2\10\1\0\2\10"+
    "\3\0\24\10\2\200\14\10\27\0\2\10\1\0\2\10"+
    "\3\0\34\10\2\201\4\10\27\0\2\11\1\0\2\11"+
    "\3\0\24\11\2\202\14\11\27\0\2\11\1\0\2\11"+
    "\3\0\34\11\2\203\4\11\27\0\2\10\1\0\2\10"+
    "\3\0\2\204\40\10\27\0\2\11\1\0\2\11\3\0"+
    "\2\205\40\11\27\0\2\10\1\0\2\10\3\0\4\10"+
    "\2\206\34\10\27\0\2\11\1\0\2\11\3\0\4\11"+
    "\2\207\34\11\27\0\2\10\1\0\2\10\3\0\2\210"+
    "\40\10\27\0\2\11\1\0\2\11\3\0\2\211\40\11"+
    "\27\0\2\10\1\0\2\10\3\0\6\10\2\212\32\10"+
    "\27\0\2\10\1\0\2\10\3\0\20\10\2\213\20\10"+
    "\27\0\2\11\1\0\2\11\3\0\6\11\2\214\32\11"+
    "\27\0\2\11\1\0\2\11\3\0\20\11\2\215\20\11"+
    "\27\0\2\10\1\0\2\10\3\0\16\10\2\216\22\10"+
    "\27\0\2\10\1\0\2\10\3\0\20\10\2\217\20\10"+
    "\27\0\2\11\1\0\2\11\3\0\16\11\2\220\22\11"+
    "\27\0\2\11\1\0\2\11\3\0\20\11\2\221\20\11"+
    "\27\0\2\10\1\0\2\10\3\0\20\10\2\222\20\10"+
    "\27\0\2\10\1\0\2\10\3\0\12\10\2\223\26\10"+
    "\27\0\2\11\1\0\2\11\3\0\20\11\2\224\20\11"+
    "\27\0\2\11\1\0\2\11\3\0\12\11\2\225\26\11"+
    "\27\0\2\10\1\0\2\10\3\0\2\226\40\10\27\0"+
    "\2\11\1\0\2\11\3\0\2\227\40\11\27\0\2\10"+
    "\1\0\2\10\3\0\20\10\2\230\20\10\27\0\2\10"+
    "\1\0\2\10\3\0\2\10\2\231\36\10\27\0\2\11"+
    "\1\0\2\11\3\0\20\11\2\232\20\11\27\0\2\11"+
    "\1\0\2\11\3\0\2\11\2\233\36\11\27\0\2\10"+
    "\1\0\2\10\3\0\16\10\2\163\22\10\27\0\2\11"+
    "\1\0\2\11\3\0\16\11\2\165\22\11\27\0\2\10"+
    "\1\0\2\10\3\0\16\10\2\234\22\10\27\0\2\11"+
    "\1\0\2\11\3\0\16\11\2\235\22\11\27\0\2\10"+
    "\1\0\2\10\3\0\20\10\2\236\20\10\27\0\2\11"+
    "\1\0\2\11\3\0\20\11\2\237\20\11\27\0\2\10"+
    "\1\0\2\10\3\0\32\10\2\240\6\10\27\0\2\10"+
    "\1\0\2\10\3\0\26\10\2\241\12\10\27\0\2\11"+
    "\1\0\2\11\3\0\32\11\2\242\6\11\27\0\2\11"+
    "\1\0\2\11\3\0\26\11\2\243\12\11\27\0\2\10"+
    "\1\0\2\10\3\0\26\10\2\244\12\10\27\0\2\10"+
    "\1\0\2\10\3\0\36\10\2\245\2\10\27\0\2\11"+
    "\1\0\2\11\3\0\26\11\2\246\12\11\27\0\2\11"+
    "\1\0\2\11\3\0\36\11\2\247\2\11\27\0\2\10"+
    "\1\0\2\10\3\0\10\10\2\250\30\10\27\0\2\11"+
    "\1\0\2\11\3\0\10\11\2\251\30\11\27\0\2\10"+
    "\1\0\2\10\3\0\16\10\2\252\22\10\27\0\2\11"+
    "\1\0\2\11\3\0\16\11\2\253\22\11\26\0";

  private static int [] zzUnpackTrans() {
    int [] result = new int[6825];
    int offset = 0;
    offset = zzUnpackTrans(ZZ_TRANS_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackTrans(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      value--;
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /* error codes */
  private static final int ZZ_UNKNOWN_ERROR = 0;
  private static final int ZZ_NO_MATCH = 1;
  private static final int ZZ_PUSHBACK_2BIG = 2;

  /* error messages for the codes above */
  private static final String ZZ_ERROR_MSG[] = {
    "Unkown internal scanner error",
    "Error: could not match input",
    "Error: pushback value was too large"
  };

  /**
   * ZZ_ATTRIBUTE[aState] contains the attributes of state <code>aState</code>
   */
  private static final int [] ZZ_ATTRIBUTE = zzUnpackAttribute();

  private static final String ZZ_ATTRIBUTE_PACKED_0 =
    "\4\0\1\11\1\1\1\11\4\1\1\11\26\1\21\11"+
    "\2\1\3\11\1\1\3\11\44\1\7\11\104\1";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[171];
    int offset = 0;
    offset = zzUnpackAttribute(ZZ_ATTRIBUTE_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAttribute(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }

  /** the input device */
  private java.io.Reader zzReader;

  /** the current state of the DFA */
  private int zzState;

  /** the current lexical state */
  private int zzLexicalState = YYINITIAL;

  /** this buffer contains the current text to be matched and is
      the source of the yytext() string */
  private char zzBuffer[] = new char[ZZ_BUFFERSIZE];

  /** the textposition at the last accepting state */
  private int zzMarkedPos;

  /** the current text position in the buffer */
  private int zzCurrentPos;

  /** startRead marks the beginning of the yytext() string in the buffer */
  private int zzStartRead;

  /** endRead marks the last character in the buffer, that has been read
      from input */
  private int zzEndRead;

  /** number of newlines encountered up to the start of the matched text */
  private int yyline;

  /** the number of characters up to the start of the matched text */
  private int yychar;

  /**
   * the number of characters from the last newline up to the start of the 
   * matched text
   */
  private int yycolumn;

  /** 
   * zzAtBOL == true <=> the scanner is currently at the beginning of a line
   */
  private boolean zzAtBOL = true;

  /** zzAtEOF == true <=> the scanner is at the EOF */
  private boolean zzAtEOF;

  /** denotes if the user-EOF-code has already been executed */
  private boolean zzEOFDone;

  /* user code: */

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



  /**
   * Creates a new scanner
   * There is also a java.io.InputStream version of this constructor.
   *
   * @param   in  the java.io.Reader to read input from.
   */
  public Lexer(java.io.Reader in) {
    this.zzReader = in;
  }

  /**
   * Creates a new scanner.
   * There is also java.io.Reader version of this constructor.
   *
   * @param   in  the java.io.Inputstream to read input from.
   */
  public Lexer(java.io.InputStream in) {
    this(new java.io.InputStreamReader(in));
  }

  /** 
   * Unpacks the compressed character translation table.
   *
   * @param packed   the packed character translation table
   * @return         the unpacked character translation table
   */
  private static char [] zzUnpackCMap(String packed) {
    char [] map = new char[0x10000];
    int i = 0;  /* index in packed string  */
    int j = 0;  /* index in unpacked array */
    while (i < 166) {
      int  count = packed.charAt(i++);
      char value = packed.charAt(i++);
      do map[j++] = value; while (--count > 0);
    }
    return map;
  }


  /**
   * Refills the input buffer.
   *
   * @return      <code>false</code>, iff there was new input.
   * 
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  private boolean zzRefill() throws java.io.IOException {

    /* first: make room (if you can) */
    if (zzStartRead > 0) {
      System.arraycopy(zzBuffer, zzStartRead,
                       zzBuffer, 0,
                       zzEndRead-zzStartRead);

      /* translate stored positions */
      zzEndRead-= zzStartRead;
      zzCurrentPos-= zzStartRead;
      zzMarkedPos-= zzStartRead;
      zzStartRead = 0;
    }

    /* is the buffer big enough? */
    if (zzCurrentPos >= zzBuffer.length) {
      /* if not: blow it up */
      char newBuffer[] = new char[zzCurrentPos*2];
      System.arraycopy(zzBuffer, 0, newBuffer, 0, zzBuffer.length);
      zzBuffer = newBuffer;
    }

    /* finally: fill the buffer with new input */
    int numRead = zzReader.read(zzBuffer, zzEndRead,
                                            zzBuffer.length-zzEndRead);

    if (numRead > 0) {
      zzEndRead+= numRead;
      return false;
    }
    // unlikely but not impossible: read 0 characters, but not at end of stream    
    if (numRead == 0) {
      int c = zzReader.read();
      if (c == -1) {
        return true;
      } else {
        zzBuffer[zzEndRead++] = (char) c;
        return false;
      }     
    }

	// numRead < 0
    return true;
  }

    
  /**
   * Closes the input stream.
   */
  public final void yyclose() throws java.io.IOException {
    zzAtEOF = true;            /* indicate end of file */
    zzEndRead = zzStartRead;  /* invalidate buffer    */

    if (zzReader != null)
      zzReader.close();
  }


  /**
   * Resets the scanner to read from a new input stream.
   * Does not close the old reader.
   *
   * All internal variables are reset, the old input stream 
   * <b>cannot</b> be reused (internal buffer is discarded and lost).
   * Lexical state is set to <tt>ZZ_INITIAL</tt>.
   *
   * @param reader   the new input stream 
   */
  public final void yyreset(java.io.Reader reader) {
    zzReader = reader;
    zzAtBOL  = true;
    zzAtEOF  = false;
    zzEOFDone = false;
    zzEndRead = zzStartRead = 0;
    zzCurrentPos = zzMarkedPos = 0;
    yyline = yychar = yycolumn = 0;
    zzLexicalState = YYINITIAL;
  }


  /**
   * Returns the current lexical state.
   */
  public final int yystate() {
    return zzLexicalState;
  }


  /**
   * Enters a new lexical state
   *
   * @param newState the new lexical state
   */
  public final void yybegin(int newState) {
    zzLexicalState = newState;
  }


  /**
   * Returns the text matched by the current regular expression.
   */
  public final String yytext() {
    return new String( zzBuffer, zzStartRead, zzMarkedPos-zzStartRead );
  }


  /**
   * Returns the character at position <tt>pos</tt> from the 
   * matched text. 
   * 
   * It is equivalent to yytext().charAt(pos), but faster
   *
   * @param pos the position of the character to fetch. 
   *            A value from 0 to yylength()-1.
   *
   * @return the character at position pos
   */
  public final char yycharat(int pos) {
    return zzBuffer[zzStartRead+pos];
  }


  /**
   * Returns the length of the matched text region.
   */
  public final int yylength() {
    return zzMarkedPos-zzStartRead;
  }


  /**
   * Reports an error that occured while scanning.
   *
   * In a wellformed scanner (no or only correct usage of 
   * yypushback(int) and a match-all fallback rule) this method 
   * will only be called with things that "Can't Possibly Happen".
   * If this method is called, something is seriously wrong
   * (e.g. a JFlex bug producing a faulty scanner etc.).
   *
   * Usual syntax/scanner level error handling should be done
   * in error fallback rules.
   *
   * @param   errorCode  the code of the errormessage to display
   */
  private void zzScanError(int errorCode) {
    String message;
    try {
      message = ZZ_ERROR_MSG[errorCode];
    }
    catch (ArrayIndexOutOfBoundsException e) {
      message = ZZ_ERROR_MSG[ZZ_UNKNOWN_ERROR];
    }

    throw new Error(message);
  } 


  /**
   * Pushes the specified amount of characters back into the input stream.
   *
   * They will be read again by then next call of the scanning method
   *
   * @param number  the number of characters to be read again.
   *                This number must not be greater than yylength()!
   */
  public void yypushback(int number)  {
    if ( number > yylength() )
      zzScanError(ZZ_PUSHBACK_2BIG);

    zzMarkedPos -= number;
  }


  /**
   * Resumes scanning until the next regular expression is matched,
   * the end of input is encountered or an I/O-Error occurs.
   *
   * @return      the next token
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  public int yylex() throws java.io.IOException {
    int zzInput;
    int zzAction;

    // cached fields:
    int zzCurrentPosL;
    int zzMarkedPosL;
    int zzEndReadL = zzEndRead;
    char [] zzBufferL = zzBuffer;
    char [] zzCMapL = ZZ_CMAP;

    int [] zzTransL = ZZ_TRANS;
    int [] zzRowMapL = ZZ_ROWMAP;
    int [] zzAttrL = ZZ_ATTRIBUTE;

    while (true) {
      zzMarkedPosL = zzMarkedPos;

      boolean zzR = false;
      for (zzCurrentPosL = zzStartRead; zzCurrentPosL < zzMarkedPosL;
                                                             zzCurrentPosL++) {
        switch (zzBufferL[zzCurrentPosL]) {
        case '\u000B':
        case '\u000C':
        case '\u0085':
        case '\u2028':
        case '\u2029':
          yyline++;
          yycolumn = 0;
          zzR = false;
          break;
        case '\r':
          yyline++;
          yycolumn = 0;
          zzR = true;
          break;
        case '\n':
          if (zzR)
            zzR = false;
          else {
            yyline++;
            yycolumn = 0;
          }
          break;
        default:
          zzR = false;
          yycolumn++;
        }
      }

      if (zzR) {
        // peek one character ahead if it is \n (if we have counted one line too much)
        boolean zzPeek;
        if (zzMarkedPosL < zzEndReadL)
          zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        else if (zzAtEOF)
          zzPeek = false;
        else {
          boolean eof = zzRefill();
          zzEndReadL = zzEndRead;
          zzMarkedPosL = zzMarkedPos;
          zzBufferL = zzBuffer;
          if (eof) 
            zzPeek = false;
          else 
            zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        }
        if (zzPeek) yyline--;
      }
      zzAction = -1;

      zzCurrentPosL = zzCurrentPos = zzStartRead = zzMarkedPosL;
  
      zzState = ZZ_LEXSTATE[zzLexicalState];


      zzForAction: {
        while (true) {
    
          if (zzCurrentPosL < zzEndReadL)
            zzInput = zzBufferL[zzCurrentPosL++];
          else if (zzAtEOF) {
            zzInput = YYEOF;
            break zzForAction;
          }
          else {
            // store back cached positions
            zzCurrentPos  = zzCurrentPosL;
            zzMarkedPos   = zzMarkedPosL;
            boolean eof = zzRefill();
            // get translated positions and possibly new buffer
            zzCurrentPosL  = zzCurrentPos;
            zzMarkedPosL   = zzMarkedPos;
            zzBufferL      = zzBuffer;
            zzEndReadL     = zzEndRead;
            if (eof) {
              zzInput = YYEOF;
              break zzForAction;
            }
            else {
              zzInput = zzBufferL[zzCurrentPosL++];
            }
          }
          int zzNext = zzTransL[ zzRowMapL[zzState] + zzCMapL[zzInput] ];
          if (zzNext == -1) break zzForAction;
          zzState = zzNext;

          int zzAttributes = zzAttrL[zzState];
          if ( (zzAttributes & 1) == 1 ) {
            zzAction = zzState;
            zzMarkedPosL = zzCurrentPosL;
            if ( (zzAttributes & 8) == 8 ) break zzForAction;
          }

        }
      }

      // store back cached position
      zzMarkedPos = zzMarkedPosL;

      switch (zzAction < 0 ? zzAction : ZZ_ACTION[zzAction]) {
        case 55: 
          { return Parser.CLASS;
          }
        case 59: break;
        case 46: 
          { return Parser.NOT;
          }
        case 60: break;
        case 56: 
          { return Parser.WHILE;
          }
        case 61: break;
        case 15: 
          { return Parser.QUEST;
          }
        case 62: break;
        case 48: 
          { return Parser.LOOP;
          }
        case 63: break;
        case 6: 
          { return Parser.MINUS;
          }
        case 64: break;
        case 11: 
          { return Parser.PLUS;
          }
        case 65: break;
        case 33: 
          { yybegin(MULTI_LINE_COMMENT);
          }
        case 66: break;
        case 19: 
          { return Parser.RSQUARE;
          }
        case 67: break;
        case 16: 
          { return Parser.EXCLAM;
          }
        case 68: break;
        case 8: 
          { return Parser.TIMES;
          }
        case 69: break;
        case 47: 
          { return Parser.NEW;
          }
        case 70: break;
        case 58: 
          { return Parser.INHERITS;
          }
        case 71: break;
        case 22: 
          { return Parser.SEMICOL;
          }
        case 72: break;
        case 49: 
          { return Parser.POOL;
          }
        case 73: break;
        case 27: 
          { yybegin(YYINITIAL);
          }
        case 74: break;
        case 30: 
          { str.append("\\n");
          }
        case 75: break;
        case 36: 
          { return Parser.IF;
          }
        case 76: break;
        case 45: 
          { return Parser.LET;
          }
        case 77: break;
        case 13: 
          { return Parser.ATSIGN;
          }
        case 78: break;
        case 14: 
          { return Parser.TILDE;
          }
        case 79: break;
        case 7: 
          { return Parser.LPARENT;
          }
        case 80: break;
        case 29: 
          { yybegin(YYINITIAL);
				yylval = str.toString();												
				return Parser.STRING;
          }
        case 81: break;
        case 26: 
          { str.setLength(0); str_beginning_position = new Position(yyline, yycolumn); yybegin(STRING);
          }
        case 82: break;
        case 40: 
          { return Parser.LESSOREQUAL;
          }
        case 83: break;
        case 1: 
          { System.out.printf("Unknown character [%s]\n", yytext());
                       return Parser.ERROR;
          }
        case 84: break;
        case 54: 
          { return Parser.ESAC;
          }
        case 85: break;
        case 51: 
          { yylval=yytext(); return Parser.BOOL;
          }
        case 86: break;
        case 28: 
          { str.append( yytext() );
          }
        case 87: break;
        case 10: 
          { return Parser.LESS;
          }
        case 88: break;
        case 2: 
          { yylval=yytext(); return Parser.INT;
          }
        case 89: break;
        case 44: 
          { str.append("\\");
          }
        case 90: break;
        case 5: 
          { yylval=yytext(); return Parser.ID;
          }
        case 91: break;
        case 57: 
          { return Parser.ISVOID;
          }
        case 92: break;
        case 18: 
          { return Parser.LSQUARE;
          }
        case 93: break;
        case 21: 
          { return Parser.RCURLY;
          }
        case 94: break;
        case 20: 
          { return Parser.LCURLY;
          }
        case 95: break;
        case 24: 
          { return Parser.COMMA;
          }
        case 96: break;
        case 34: 
          { return Parser.OF;
          }
        case 97: break;
        case 32: 
          { yybegin(SINGLE_LINE_COMMENT);
          }
        case 98: break;
        case 38: 
          { return Parser.FARROW;
          }
        case 99: break;
        case 42: 
          { if (nested_comment_count ==0)
	  					  yybegin(YYINITIAL);
	  					  else
	  					  nested_comment_count--;
          }
        case 100: break;
        case 39: 
          { return Parser.BARROW;
          }
        case 101: break;
        case 37: 
          { return Parser.FI;
          }
        case 102: break;
        case 35: 
          { return Parser.IN;
          }
        case 103: break;
        case 43: 
          { str.append('\"');
          }
        case 104: break;
        case 23: 
          { return Parser.COLON;
          }
        case 105: break;
        case 50: 
          { return Parser.THEN;
          }
        case 106: break;
        case 31: 
          { str.append("\\t");
          }
        case 107: break;
        case 12: 
          { return Parser.SLASH;
          }
        case 108: break;
        case 9: 
          { return Parser.EQUALS;
          }
        case 109: break;
        case 17: 
          { return Parser.RPARENT;
          }
        case 110: break;
        case 4: 
          { yylval=yytext(); return Parser.TYPE;
          }
        case 111: break;
        case 53: 
          { return Parser.ELSE;
          }
        case 112: break;
        case 52: 
          { return Parser.CASE;
          }
        case 113: break;
        case 25: 
          { return Parser.DOT;
          }
        case 114: break;
        case 41: 
          { nested_comment_count++;
          }
        case 115: break;
        case 3: 
          { 
          }
        case 116: break;
        default: 
          if (zzInput == YYEOF && zzStartRead == zzCurrentPos) {
            zzAtEOF = true;
              {
                return Parser.EOF;
              }
          } 
          else {
            zzScanError(ZZ_NO_MATCH);
          }
      }
    }
  }


}