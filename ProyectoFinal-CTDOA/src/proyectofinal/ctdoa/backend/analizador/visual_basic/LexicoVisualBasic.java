/* The following code was generated by JFlex 1.4.3 on 10/01/21 17:08 */

package proyectofinal.ctdoa.backend.analizador.visual_basic;

import java_cup.runtime.*;
import proyectofinal.ctdoa.backend.manejadores.*;
import proyectofinal.ctdoa.frontend.gui.FrameCTDOA;


/**
 * This class is a scanner generated by 
 * <a href="http://www.jflex.de/">JFlex</a> 1.4.3
 * on 10/01/21 17:08 from the specification file
 * <tt>src/proyectofinal/ctdoa/backend/analizador/visual_basic/LexicoVisualBasic.flex</tt>
 */
public class LexicoVisualBasic implements java_cup.runtime.Scanner {

  /** This character denotes the end of file */
  public static final int YYEOF = -1;

  /** initial size of the lookahead buffer */
  private static final int ZZ_BUFFERSIZE = 16384;

  /** lexical states */
  public static final int YYINITIAL = 0;

  /**
   * ZZ_LEXSTATE[l] is the state in the DFA for the lexical state l
   * ZZ_LEXSTATE[l+1] is the state in the DFA for the lexical state l
   *                  at the beginning of a line
   * l is of the form l = 2*k, k a non negative integer
   */
  private static final int ZZ_LEXSTATE[] = { 
     0, 0
  };

  /** 
   * Translates characters to character classes
   */
  private static final char [] ZZ_CMAP = {
     0,  0,  0,  0,  0,  0,  0,  0,  0,  3,  2,  0,  3,  1,  0,  0, 
     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 
    21, 19, 20, 19, 19, 19, 39, 18, 45, 46,  5, 34, 44, 35, 29,  4, 
    23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 19, 19, 37, 36, 38, 19, 
    19, 14, 41, 15, 32, 28, 11, 31, 16,  6, 22, 22, 12, 33,  7, 13, 
     9, 22, 17, 27,  8, 10, 43, 30, 40, 42, 22, 19, 19, 19, 19, 22, 
    19, 14, 41, 15, 32, 28, 11, 31, 16,  6, 22, 22, 12, 33,  7, 13, 
     9, 22, 17, 27,  8, 10, 43, 30, 40, 42, 22, 19, 19, 19, 19, 19, 
    25, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 26, 19, 19, 19, 19, 
    19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 
    19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 
    19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 
    19, 22, 24, 19, 19, 19, 19, 19, 19, 22, 19, 19, 19, 22, 19, 19, 
    19, 22, 19, 22, 19, 19, 19, 19, 19, 19, 22, 19, 19, 19, 19, 19, 
    19, 22, 24, 19, 19, 19, 19, 19, 19, 22, 19, 19, 19, 22, 19, 19, 
    19, 22, 19, 22, 19, 19, 19, 19,  0,  0, 22,  0,  0,  0,  0,  0
  };

  /** 
   * Translates DFA states to action switch labels.
   */
  private static final int [] ZZ_ACTION = zzUnpackAction();

  private static final String ZZ_ACTION_PACKED_0 =
    "\1\1\1\2\1\1\1\3\1\4\1\5\14\6\2\2"+
    "\1\1\1\7\1\2\5\6\1\10\1\11\1\12\1\13"+
    "\1\14\1\15\1\6\1\16\1\17\1\20\1\21\1\0"+
    "\1\6\1\22\2\6\1\23\7\6\1\24\1\6\1\25"+
    "\4\6\1\0\1\26\1\0\1\27\2\0\7\6\1\30"+
    "\2\6\1\31\1\32\1\33\1\6\2\21\2\0\1\6"+
    "\1\34\6\6\1\35\1\6\1\36\4\6\1\26\1\37"+
    "\1\1\1\6\1\40\1\6\1\41\2\6\1\42\1\6"+
    "\1\43\1\6\1\0\1\21\2\6\1\44\1\45\4\6"+
    "\1\46\1\6\1\47\1\50\1\6\1\0\1\51\1\6"+
    "\1\52\6\6\1\53\7\6\1\54\1\6\1\55\2\6"+
    "\1\56\4\6\1\57\1\60\1\61\2\6\1\62\4\6"+
    "\1\63\1\64\1\65\1\6\1\0\2\6\1\0\1\66"+
    "\1\67\3\0\1\70\3\0\1\71";

  private static int [] zzUnpackAction() {
    int [] result = new int[182];
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
    "\0\0\0\57\0\57\0\136\0\215\0\57\0\274\0\353"+
    "\0\u011a\0\u0149\0\u0178\0\u01a7\0\u01d6\0\u0205\0\u0234\0\u0263"+
    "\0\u0292\0\u02c1\0\u02f0\0\u031f\0\u034e\0\u037d\0\u03ac\0\u03db"+
    "\0\u040a\0\u0439\0\u0468\0\u0497\0\57\0\57\0\u04c6\0\u04f5"+
    "\0\u0524\0\57\0\u0553\0\57\0\57\0\57\0\u0582\0\u05b1"+
    "\0\u05e0\0\u0292\0\u060f\0\u063e\0\u0292\0\u066d\0\u069c\0\u06cb"+
    "\0\u06fa\0\u0729\0\u0758\0\u0787\0\u0292\0\u07b6\0\u0292\0\u07e5"+
    "\0\u0814\0\u0843\0\u0872\0\u08a1\0\u08a1\0\u031f\0\57\0\u08d0"+
    "\0\u08ff\0\u092e\0\u095d\0\u098c\0\u09bb\0\u09ea\0\u0a19\0\u0a48"+
    "\0\u0292\0\u0a77\0\u0aa6\0\57\0\57\0\57\0\u0ad5\0\u0b04"+
    "\0\57\0\u0b33\0\u0b62\0\u0b91\0\u0292\0\u0bc0\0\u0bef\0\u0c1e"+
    "\0\u0c4d\0\u0c7c\0\u0cab\0\u0292\0\u0cda\0\u0292\0\u0d09\0\u0d38"+
    "\0\u0d67\0\u0d96\0\57\0\u08d0\0\u0dc5\0\u0df4\0\u0292\0\u0e23"+
    "\0\u0292\0\u0e52\0\u0e81\0\u0292\0\u0eb0\0\u0292\0\u0edf\0\u0f0e"+
    "\0\u0b33\0\u0f3d\0\u0f6c\0\u0292\0\u0292\0\u0f9b\0\u0fca\0\u0ff9"+
    "\0\u1028\0\u0292\0\u1057\0\u0292\0\u1086\0\u10b5\0\u03ac\0\u0292"+
    "\0\u10e4\0\u1113\0\u1142\0\u1171\0\u11a0\0\u11cf\0\u11fe\0\u122d"+
    "\0\u0292\0\u125c\0\u128b\0\u12ba\0\u12e9\0\u1318\0\u1347\0\u1376"+
    "\0\u0292\0\u13a5\0\u0292\0\u13d4\0\u1403\0\u0292\0\u1432\0\u1461"+
    "\0\u1490\0\u14bf\0\u0292\0\u0292\0\u0292\0\u14ee\0\u151d\0\u0292"+
    "\0\u154c\0\u157b\0\u15aa\0\u15d9\0\u0292\0\u0292\0\u0292\0\u1608"+
    "\0\u1637\0\u1666\0\u1695\0\u16c4\0\u0292\0\u0292\0\u16f3\0\u1722"+
    "\0\u1751\0\u1780\0\u17af\0\u17de\0\u180d\0\57";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[182];
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
    "\1\2\1\3\1\4\1\3\1\5\1\6\1\7\1\10"+
    "\1\11\1\12\1\13\1\14\1\15\1\16\1\17\1\20"+
    "\1\21\1\22\1\23\1\2\1\24\1\25\1\21\1\26"+
    "\1\27\2\2\1\30\1\31\1\2\1\32\1\21\1\33"+
    "\1\34\1\35\1\36\1\37\1\40\1\41\1\42\1\21"+
    "\1\43\2\21\1\44\1\45\1\46\61\0\1\4\60\0"+
    "\1\47\1\50\57\0\1\21\1\51\3\21\1\52\6\21"+
    "\4\0\2\21\3\0\2\21\1\0\4\21\6\0\4\21"+
    "\11\0\7\21\1\53\4\21\4\0\2\21\3\0\1\21"+
    "\1\54\1\0\4\21\6\0\4\21\11\0\7\21\1\55"+
    "\2\21\1\56\1\21\4\0\2\21\3\0\2\21\1\0"+
    "\4\21\6\0\4\21\11\0\4\21\1\57\7\21\4\0"+
    "\2\21\3\0\2\21\1\0\4\21\6\0\4\21\11\0"+
    "\1\21\1\60\12\21\4\0\2\21\3\0\2\21\1\0"+
    "\4\21\6\0\4\21\11\0\4\21\1\61\1\21\1\62"+
    "\1\63\4\21\4\0\2\21\3\0\2\21\1\0\4\21"+
    "\6\0\4\21\11\0\7\21\1\64\4\21\4\0\2\21"+
    "\3\0\2\21\1\0\4\21\6\0\4\21\11\0\13\21"+
    "\1\65\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\11\0\1\21\1\66\12\21\4\0\2\21\3\0"+
    "\1\67\1\21\1\0\4\21\6\0\4\21\11\0\7\21"+
    "\1\70\1\71\1\21\1\72\1\21\4\0\2\21\3\0"+
    "\2\21\1\0\4\21\6\0\4\21\11\0\14\21\4\0"+
    "\2\21\3\0\2\21\1\0\4\21\6\0\4\21\11\0"+
    "\14\21\4\0\2\21\3\0\1\21\1\73\1\0\4\21"+
    "\6\0\4\21\7\0\16\74\1\75\1\74\2\0\31\74"+
    "\4\0\20\76\1\77\32\76\25\0\1\25\60\0\1\26"+
    "\5\0\1\100\52\0\1\101\33\0\2\21\1\102\1\21"+
    "\1\103\7\21\4\0\2\21\3\0\1\21\1\104\1\0"+
    "\4\21\6\0\4\21\11\0\1\21\1\105\4\21\1\106"+
    "\5\21\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\11\0\12\21\1\107\1\21\4\0\2\21\3\0"+
    "\2\21\1\0\4\21\6\0\4\21\11\0\1\110\6\21"+
    "\1\111\4\21\4\0\2\21\3\0\1\21\1\112\1\0"+
    "\4\21\6\0\4\21\11\0\7\21\1\113\4\21\4\0"+
    "\2\21\3\0\2\21\1\0\4\21\6\0\4\21\50\0"+
    "\1\114\1\115\54\0\1\114\1\0\1\116\54\0\1\115"+
    "\20\0\14\21\4\0\2\21\3\0\2\21\1\0\4\21"+
    "\6\0\2\21\1\117\1\21\3\0\1\47\1\120\1\121"+
    "\54\47\5\122\1\123\51\122\6\0\2\21\1\124\11\21"+
    "\4\0\2\21\3\0\2\21\1\0\4\21\6\0\4\21"+
    "\11\0\2\21\1\125\11\21\4\0\2\21\3\0\2\21"+
    "\1\0\4\21\6\0\4\21\11\0\14\21\4\0\2\21"+
    "\3\0\2\21\1\0\4\21\6\0\1\126\3\21\11\0"+
    "\14\21\4\0\2\21\3\0\1\21\1\127\1\0\4\21"+
    "\6\0\4\21\11\0\14\21\4\0\2\21\3\0\2\21"+
    "\1\0\4\21\6\0\1\21\1\130\2\21\11\0\2\21"+
    "\1\131\11\21\4\0\2\21\3\0\2\21\1\0\4\21"+
    "\6\0\4\21\11\0\1\21\1\132\12\21\4\0\2\21"+
    "\3\0\2\21\1\0\4\21\6\0\4\21\11\0\7\21"+
    "\1\133\4\21\4\0\2\21\3\0\2\21\1\0\4\21"+
    "\6\0\4\21\11\0\13\21\1\134\4\0\2\21\3\0"+
    "\2\21\1\0\4\21\6\0\4\21\11\0\7\21\1\135"+
    "\4\21\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\11\0\14\21\4\0\2\21\3\0\2\21\1\0"+
    "\2\21\1\136\1\21\6\0\4\21\11\0\1\21\1\137"+
    "\12\21\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\11\0\14\21\4\0\2\21\3\0\1\140\1\21"+
    "\1\0\4\21\6\0\4\21\11\0\10\21\1\141\3\21"+
    "\4\0\2\21\3\0\2\21\1\0\4\21\6\0\4\21"+
    "\11\0\2\21\1\142\11\21\4\0\2\21\3\0\2\21"+
    "\1\0\4\21\6\0\4\21\25\0\1\143\63\0\1\144"+
    "\61\0\1\145\32\0\14\21\4\0\2\21\3\0\1\21"+
    "\1\146\1\0\4\21\6\0\4\21\11\0\14\21\4\0"+
    "\2\21\3\0\2\21\1\0\4\21\6\0\1\21\1\147"+
    "\2\21\11\0\6\21\1\150\5\21\4\0\2\21\3\0"+
    "\2\21\1\0\4\21\6\0\4\21\11\0\14\21\4\0"+
    "\2\21\3\0\2\21\1\0\2\21\1\151\1\21\6\0"+
    "\4\21\11\0\14\21\4\0\2\21\3\0\1\152\1\21"+
    "\1\0\4\21\6\0\4\21\11\0\1\153\13\21\4\0"+
    "\2\21\3\0\2\21\1\0\4\21\6\0\4\21\11\0"+
    "\14\21\4\0\2\21\3\0\2\21\1\0\3\21\1\154"+
    "\6\0\4\21\11\0\11\21\1\155\2\21\4\0\2\21"+
    "\3\0\2\21\1\0\4\21\6\0\4\21\11\0\14\21"+
    "\4\0\2\21\3\0\2\21\1\0\2\21\1\156\1\21"+
    "\6\0\4\21\11\0\14\21\4\0\2\21\3\0\2\21"+
    "\1\0\4\21\6\0\3\21\1\157\5\0\1\121\54\0"+
    "\5\122\1\160\55\122\1\161\1\160\51\122\6\0\1\162"+
    "\13\21\4\0\2\21\3\0\1\21\1\163\1\0\4\21"+
    "\6\0\4\21\11\0\2\21\1\164\11\21\4\0\2\21"+
    "\3\0\2\21\1\0\4\21\6\0\4\21\11\0\1\21"+
    "\1\165\12\21\4\0\2\21\3\0\2\21\1\0\4\21"+
    "\6\0\4\21\11\0\6\21\1\166\5\21\4\0\2\21"+
    "\3\0\2\21\1\0\4\21\6\0\4\21\11\0\1\167"+
    "\13\21\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\11\0\11\21\1\170\2\21\4\0\2\21\3\0"+
    "\2\21\1\0\4\21\6\0\4\21\11\0\10\21\1\171"+
    "\3\21\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\11\0\3\21\1\172\10\21\4\0\2\21\3\0"+
    "\2\21\1\0\4\21\6\0\4\21\11\0\14\21\4\0"+
    "\2\21\3\0\1\173\1\21\1\0\4\21\6\0\4\21"+
    "\11\0\14\21\4\0\2\21\3\0\1\21\1\174\1\0"+
    "\4\21\6\0\4\21\11\0\13\21\1\175\4\0\2\21"+
    "\3\0\2\21\1\0\4\21\6\0\4\21\11\0\4\21"+
    "\1\176\7\21\4\0\2\21\3\0\2\21\1\0\4\21"+
    "\6\0\4\21\33\0\1\177\34\0\3\21\1\200\10\21"+
    "\4\0\2\21\3\0\2\21\1\0\4\21\6\0\4\21"+
    "\11\0\14\21\4\0\2\21\3\0\1\21\1\201\1\0"+
    "\4\21\6\0\4\21\11\0\14\21\4\0\2\21\3\0"+
    "\1\21\1\202\1\0\4\21\6\0\4\21\11\0\6\21"+
    "\1\203\5\21\4\0\2\21\3\0\2\21\1\0\4\21"+
    "\6\0\4\21\11\0\1\204\13\21\4\0\2\21\3\0"+
    "\2\21\1\0\4\21\6\0\4\21\11\0\10\21\1\205"+
    "\3\21\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\3\0\4\122\1\121\1\160\51\122\6\0\1\21"+
    "\1\206\12\21\4\0\2\21\3\0\2\21\1\0\4\21"+
    "\6\0\4\21\11\0\14\21\4\0\2\21\3\0\2\21"+
    "\1\0\1\21\1\207\2\21\6\0\4\21\11\0\1\210"+
    "\13\21\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\11\0\6\21\1\211\5\21\4\0\2\21\3\0"+
    "\2\21\1\0\4\21\6\0\4\21\11\0\2\21\1\212"+
    "\11\21\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\11\0\2\21\1\213\11\21\4\0\2\21\3\0"+
    "\2\21\1\0\4\21\6\0\4\21\11\0\7\21\1\214"+
    "\4\21\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\11\0\1\215\13\21\4\0\2\21\3\0\2\21"+
    "\1\0\4\21\6\0\4\21\11\0\13\21\1\216\4\0"+
    "\2\21\3\0\2\21\1\0\4\21\6\0\4\21\11\0"+
    "\11\21\1\217\2\21\4\0\2\21\3\0\2\21\1\0"+
    "\4\21\6\0\4\21\11\0\1\220\13\21\4\0\2\21"+
    "\3\0\2\21\1\0\4\21\6\0\4\21\11\0\14\21"+
    "\4\0\2\21\3\0\1\21\1\221\1\0\4\21\6\0"+
    "\4\21\11\0\14\21\4\0\2\21\3\0\2\21\1\0"+
    "\3\21\1\222\6\0\4\21\11\0\6\21\1\223\5\21"+
    "\4\0\2\21\3\0\2\21\1\0\4\21\6\0\4\21"+
    "\11\0\3\21\1\224\10\21\4\0\2\21\3\0\2\21"+
    "\1\0\4\21\6\0\4\21\11\0\14\21\4\0\2\21"+
    "\3\0\1\21\1\225\1\0\4\21\6\0\4\21\11\0"+
    "\11\21\1\226\2\21\4\0\2\21\3\0\2\21\1\0"+
    "\4\21\6\0\4\21\11\0\1\227\13\21\4\0\2\21"+
    "\3\0\2\21\1\0\4\21\6\0\4\21\11\0\1\230"+
    "\13\21\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\11\0\6\21\1\231\5\21\4\0\2\21\3\0"+
    "\2\21\1\0\4\21\6\0\4\21\11\0\1\21\1\232"+
    "\12\21\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\11\0\1\21\1\233\12\21\4\0\2\21\3\0"+
    "\2\21\1\0\4\21\6\0\4\21\11\0\2\21\1\234"+
    "\11\21\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\11\0\5\21\1\235\6\21\4\0\2\21\3\0"+
    "\2\21\1\0\4\21\6\0\4\21\11\0\10\21\1\236"+
    "\3\21\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\11\0\4\21\1\237\7\21\4\0\2\21\3\0"+
    "\2\21\1\0\4\21\6\0\4\21\11\0\13\21\1\240"+
    "\4\0\2\21\3\0\2\21\1\0\4\21\6\0\4\21"+
    "\11\0\7\21\1\241\4\21\4\0\2\21\3\0\2\21"+
    "\1\0\4\21\6\0\4\21\11\0\1\21\1\242\12\21"+
    "\4\0\2\21\3\0\2\21\1\0\4\21\6\0\4\21"+
    "\11\0\14\21\4\0\2\21\3\0\1\21\1\243\1\0"+
    "\4\21\6\0\4\21\11\0\3\21\1\244\10\21\4\0"+
    "\2\21\3\0\2\21\1\0\4\21\6\0\4\21\11\0"+
    "\6\21\1\245\5\21\4\0\2\21\3\0\2\21\1\0"+
    "\4\21\6\0\4\21\11\0\2\21\1\246\11\21\4\0"+
    "\2\21\3\0\2\21\1\0\4\21\6\0\4\21\11\0"+
    "\1\21\1\247\12\21\4\0\2\21\3\0\2\21\1\0"+
    "\4\21\6\0\4\21\11\0\3\21\1\250\10\21\4\0"+
    "\2\21\3\0\2\21\1\0\4\21\6\0\4\21\11\0"+
    "\14\21\4\0\2\21\3\0\2\21\1\251\4\21\6\0"+
    "\4\21\11\0\4\21\1\252\7\21\4\0\2\21\3\0"+
    "\2\21\1\0\4\21\6\0\4\21\11\0\4\21\1\253"+
    "\7\21\4\0\2\21\3\0\2\21\1\0\4\21\6\0"+
    "\4\21\41\0\1\254\26\0\2\21\1\255\11\21\4\0"+
    "\2\21\3\0\2\21\1\0\4\21\6\0\4\21\11\0"+
    "\2\21\1\256\11\21\4\0\2\21\3\0\2\21\1\0"+
    "\4\21\6\0\4\21\24\0\1\257\43\0\1\260\60\0"+
    "\1\261\102\0\1\262\36\0\1\263\50\0\1\264\57\0"+
    "\1\265\103\0\1\266\22\0";

  private static int [] zzUnpackTrans() {
    int [] result = new int[6204];
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
    "\1\1\2\11\2\1\1\11\26\1\2\11\3\1\1\11"+
    "\1\1\3\11\1\1\1\0\23\1\1\0\1\1\1\0"+
    "\1\11\2\0\12\1\3\11\2\1\1\11\2\0\17\1"+
    "\1\11\14\1\1\0\16\1\1\0\51\1\1\0\2\1"+
    "\1\0\2\1\3\0\1\1\3\0\1\11";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[182];
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
    
    private ManejadorCuartetos mc = ManejadorCuartetos.getInstancia();
    private FrameCTDOA frameCTDOA;

    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline + 1, yycolumn + 1, value);
    }

    public void setFrameCTDOA(FrameCTDOA frameCTDOA) {
        this.frameCTDOA = frameCTDOA;
    }

    private Symbol symbol(int type){
        return new Symbol(type, yyline + 1, yycolumn + 1);
    }



  /**
   * Creates a new scanner
   * There is also a java.io.InputStream version of this constructor.
   *
   * @param   in  the java.io.Reader to read input from.
   */
  public LexicoVisualBasic(java.io.Reader in) {
    this.zzReader = in;
  }

  /**
   * Creates a new scanner.
   * There is also java.io.Reader version of this constructor.
   *
   * @param   in  the java.io.Inputstream to read input from.
   */
  public LexicoVisualBasic(java.io.InputStream in) {
    this(new java.io.InputStreamReader(in));
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
   * Contains user EOF-code, which will be executed exactly once,
   * when the end of file is reached
   */
  private void zzDoEOF() throws java.io.IOException {
    if (!zzEOFDone) {
      zzEOFDone = true;
      yyclose();
    }
  }


  /**
   * Resumes scanning until the next regular expression is matched,
   * the end of input is encountered or an I/O-Error occurs.
   *
   * @return      the next token
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  public java_cup.runtime.Symbol next_token() throws java.io.IOException {
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

      yychar+= zzMarkedPosL-zzStartRead;

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
        case 19: 
          { return new Symbol(sym.TO, yycolumn, yyline, yytext());
          }
        case 58: break;
        case 8: 
          { return new Symbol(sym.MAS, yycolumn, yyline, yytext());
          }
        case 59: break;
        case 51: 
          { return new Symbol(sym.DECIMAL, yycolumn, yyline, yytext());
          }
        case 60: break;
        case 22: 
          { return new Symbol(sym.CARACTER, yycolumn, yyline, yytext().replaceAll("\'", ""));
          }
        case 61: break;
        case 26: 
          { return new Symbol(sym.MAYOR_IGUAL, yycolumn, yyline, yytext());
          }
        case 62: break;
        case 41: 
          { return new Symbol(sym.STEP, yycolumn, yyline, yytext());
          }
        case 63: break;
        case 30: 
          { return new Symbol(sym.AND, yycolumn, yyline, yytext());
          }
        case 64: break;
        case 27: 
          { return new Symbol(sym.DISTINTO, yycolumn, yyline, yytext());
          }
        case 65: break;
        case 35: 
          { return new Symbol(sym.MODULO, yycolumn, yyline, yytext());
          }
        case 66: break;
        case 47: 
          { return new Symbol(sym.RETURN, yycolumn, yyline, yytext());
          }
        case 67: break;
        case 14: 
          { return new Symbol(sym.COMA, yycolumn, yyline, yytext());
          }
        case 68: break;
        case 56: 
          { return new Symbol(sym.CONSOLA, yycolumn, yyline, new String(yytext()));
          }
        case 69: break;
        case 32: 
          { return new Symbol(sym.SUB, yycolumn, yyline, yytext());
          }
        case 70: break;
        case 10: 
          { return new Symbol(sym.IGUAL, yycolumn, yyline, yytext());
          }
        case 71: break;
        case 40: 
          { return new Symbol(sym.CHAR, yycolumn, yyline, yytext());
          }
        case 72: break;
        case 2: 
          { frameCTDOA.addErrores(
                      "\nError Lexico: "
              + "\n\tLinea #:                     << " + (yyline + 1) + " >> "
              + "\n\tColumna #:                   << " + (yycolumn + 1) + " >> "
              + "\n\tToken NO Reconocido:         << " + yytext() + " >> ");
          }
        case 73: break;
        case 46: 
          { return new Symbol(sym.PUBLIC, yycolumn, yyline, yytext());
          }
        case 74: break;
        case 42: 
          { return new Symbol(sym.ELSE, yycolumn, yyline, yytext());
          }
        case 75: break;
        case 31: 
          { return new Symbol(sym.REAL, yycolumn, yyline, Float.parseFloat(yytext()));
          }
        case 76: break;
        case 52: 
          { return new Symbol(sym.IINPUT, yycolumn, yyline, new String(yytext()));
          }
        case 77: break;
        case 5: 
          { return new Symbol(sym.POR, yycolumn, yyline, yytext());
          }
        case 78: break;
        case 25: 
          { return new Symbol(sym.MENOR_IGUAL, yycolumn, yyline, yytext());
          }
        case 79: break;
        case 20: 
          { return new Symbol(sym.OR, yycolumn, yyline, yytext());
          }
        case 80: break;
        case 55: 
          { return new Symbol(sym.FINPUT, yycolumn, yyline, new String(yytext()));
          }
        case 81: break;
        case 13: 
          { return new Symbol(sym.AMPERSAND, yycolumn, yyline, yytext());
          }
        case 82: break;
        case 11: 
          { return new Symbol(sym.MENOR, yycolumn, yyline, yytext());
          }
        case 83: break;
        case 54: 
          { return new Symbol(sym.CINPUT, yycolumn, yyline, new String(yytext()));
          }
        case 84: break;
        case 48: 
          { return new Symbol(sym.SELECT, yycolumn, yyline, yytext());
          }
        case 85: break;
        case 4: 
          { return new Symbol(sym.DIV, yycolumn, yyline, yytext());
          }
        case 86: break;
        case 9: 
          { return new Symbol(sym.MENOS, yycolumn, yyline, yytext());
          }
        case 87: break;
        case 17: 
          { mc.addComentario(yytext());
          }
        case 88: break;
        case 29: 
          { return new Symbol(sym.FOR, yycolumn, yyline, yytext());
          }
        case 89: break;
        case 12: 
          { return new Symbol(sym.MAYOR, yycolumn, yyline, yytext());
          }
        case 90: break;
        case 15: 
          { return new Symbol(sym.PARENTESIS_A, yycolumn, yyline, yytext());
          }
        case 91: break;
        case 38: 
          { return new Symbol(sym.LOOP, yycolumn, yyline, yytext());
          }
        case 92: break;
        case 23: 
          { return new Symbol(sym.CADENA, yycolumn, yyline, yytext().replaceAll("\"", ""));
          }
        case 93: break;
        case 33: 
          { return new Symbol(sym.END, yycolumn, yyline, yytext());
          }
        case 94: break;
        case 7: 
          { return new Symbol(sym.NUMERO, yycolumn, yyline, Integer.parseInt(yytext()));
          }
        case 95: break;
        case 24: 
          { return new Symbol(sym.DO, yycolumn, yyline, yytext());
          }
        case 96: break;
        case 18: 
          { return new Symbol(sym.IF, yycolumn, yyline, yytext());
          }
        case 97: break;
        case 21: 
          { return new Symbol(sym.AS, yycolumn, yyline, yytext());
          }
        case 98: break;
        case 37: 
          { return new Symbol(sym.THEN, yycolumn, yyline, yytext());
          }
        case 99: break;
        case 45: 
          { return new Symbol(sym.BYVAL, yycolumn, yyline, yytext());
          }
        case 100: break;
        case 34: 
          { return new Symbol(sym.DIM, yycolumn, yyline, yytext());
          }
        case 101: break;
        case 6: 
          { return new Symbol(sym.ID, yycolumn, yyline, new String(yytext()));
          }
        case 102: break;
        case 50: 
          { return new Symbol(sym.INTEGER, yycolumn, yyline, yytext());
          }
        case 103: break;
        case 57: 
          { return new Symbol(sym.CONSOLA_LINEA, yycolumn, yyline, new String(yytext()));
          }
        case 104: break;
        case 16: 
          { return new Symbol(sym.PARENTESIS_C, yycolumn, yyline, yytext());
          }
        case 105: break;
        case 53: 
          { return new Symbol(sym.FUNCTION, yycolumn, yyline, yytext());
          }
        case 106: break;
        case 39: 
          { return new Symbol(sym.CASE, yycolumn, yyline, yytext());
          }
        case 107: break;
        case 28: 
          { return new Symbol(sym.NOT, yycolumn, yyline, yytext());
          }
        case 108: break;
        case 3: 
          { return new Symbol(sym.SALTO, yycolumn, yyline, "Salto");
          }
        case 109: break;
        case 1: 
          { /*Ignore*/
          }
        case 110: break;
        case 43: 
          { return new Symbol(sym.UNTIL, yycolumn, yyline, yytext());
          }
        case 111: break;
        case 36: 
          { return new Symbol(sym.NEXT, yycolumn, yyline, yytext());
          }
        case 112: break;
        case 44: 
          { return new Symbol(sym.WHILE, yycolumn, yyline, yytext());
          }
        case 113: break;
        case 49: 
          { return new Symbol(sym.ELSEIF, yycolumn, yyline, yytext());
          }
        case 114: break;
        default: 
          if (zzInput == YYEOF && zzStartRead == zzCurrentPos) {
            zzAtEOF = true;
            zzDoEOF();
              { return new java_cup.runtime.Symbol(sym.EOF); }
          } 
          else {
            zzScanError(ZZ_NO_MATCH);
          }
      }
    }
  }

  /**
   * Converts an int token code into the name of the
   * token by reflection on the cup symbol class/interface sym
   *
   * This code was contributed by Karl Meissner <meissnersd@yahoo.com>
   */
  private String getTokenName(int token) {
    try {
      java.lang.reflect.Field [] classFields = sym.class.getFields();
      for (int i = 0; i < classFields.length; i++) {
        if (classFields[i].getInt(null) == token) {
          return classFields[i].getName();
        }
      }
    } catch (Exception e) {
      e.printStackTrace(System.err);
    }

    return "UNKNOWN TOKEN";
  }

  /**
   * Same as next_token but also prints the token to standard out
   * for debugging.
   *
   * This code was contributed by Karl Meissner <meissnersd@yahoo.com>
   */
  public java_cup.runtime.Symbol debug_next_token() throws java.io.IOException {
    java_cup.runtime.Symbol s = next_token();
    System.out.println( "line:" + (yyline+1) + " col:" + (yycolumn+1) + " --"+ yytext() + "--" + getTokenName(s.sym) + "--");
    return s;
  }

  /**
   * Runs the scanner on input files.
   *
   * This main method is the debugging routine for the scanner.
   * It prints debugging information about each returned token to
   * System.out until the end of file is reached, or an error occured.
   *
   * @param argv   the command line, contains the filenames to run
   *               the scanner on.
   */
  public static void main(String argv[]) {
    if (argv.length == 0) {
      System.out.println("Usage : java LexicoVisualBasic <inputfile>");
    }
    else {
      for (int i = 0; i < argv.length; i++) {
        LexicoVisualBasic scanner = null;
        try {
          scanner = new LexicoVisualBasic( new java.io.FileReader(argv[i]) );
          while ( !scanner.zzAtEOF ) scanner.debug_next_token();
        }
        catch (java.io.FileNotFoundException e) {
          System.out.println("File not found : \""+argv[i]+"\"");
        }
        catch (java.io.IOException e) {
          System.out.println("IO error scanning file \""+argv[i]+"\"");
          System.out.println(e);
        }
        catch (Exception e) {
          System.out.println("Unexpected exception:");
          e.printStackTrace();
        }
      }
    }
  }


}
