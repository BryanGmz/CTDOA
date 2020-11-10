/* The following code was generated by JFlex 1.4.3 on 10/11/20 03:26 */

package proyectofinal.ctdoa.backend.analizador.java;

import java_cup.runtime.*;
import proyectofinal.ctdoa.backend.manejadores.ManejadorCuartetos;
import proyectofinal.ctdoa.frontend.gui.FrameCTDOA;


/**
 * This class is a scanner generated by 
 * <a href="http://www.jflex.de/">JFlex</a> 1.4.3
 * on 10/11/20 03:26 from the specification file
 * <tt>src/proyectofinal/ctdoa/backend/analizador/java/LexicoJava.flex</tt>
 */
public class LexicoJava implements java_cup.runtime.Scanner {

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
    26, 40, 27, 25, 25, 25, 43, 24, 54, 55,  5, 33, 51, 34, 12,  4, 
    29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 50, 49, 41, 39, 42, 25, 
    25, 28, 28, 28, 37, 28, 28, 28, 28, 28, 28, 28, 28, 35, 28, 36, 
    28, 28, 28,  6, 28, 28, 28, 28, 28, 28, 28, 25, 25, 25, 25, 28, 
    25, 21, 46, 22, 38, 10, 20, 28, 23, 17, 28, 47, 19, 11, 18, 13, 
    15, 28, 16,  8,  9, 14, 48, 45, 28,  7, 28, 52, 44, 53, 25, 25, 
    31, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 32, 25, 25, 25, 25, 
    25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 
    25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 
    25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 
    25, 28, 25, 25, 25, 25, 25, 25, 25, 28, 25, 25, 25, 28, 25, 25, 
    25, 28, 25, 28, 25, 25, 25, 25, 25, 25, 28, 25, 25, 25, 25, 25, 
    25, 28, 30, 25, 25, 25, 25, 25, 25, 28, 25, 25, 25, 28, 25, 25, 
    25, 28, 25, 28, 25, 25, 25, 25,  0,  0, 28,  0,  0,  0,  0,  0
  };

  /** 
   * Translates DFA states to action switch labels.
   */
  private static final int [] ZZ_ACTION = zzUnpackAction();

  private static final String ZZ_ACTION_PACKED_0 =
    "\1\1\1\2\2\1\1\3\1\4\6\5\1\6\5\5"+
    "\1\2\1\1\1\2\1\7\1\2\1\10\1\11\2\5"+
    "\1\12\1\13\1\14\1\15\2\2\3\5\1\16\1\17"+
    "\1\20\1\21\1\22\1\23\1\24\1\25\1\0\10\5"+
    "\1\26\5\5\1\0\1\27\1\0\1\30\2\0\1\31"+
    "\1\32\2\5\1\33\1\34\1\35\1\36\1\37\1\40"+
    "\1\41\3\5\2\25\2\0\4\5\1\42\2\5\1\43"+
    "\1\44\4\5\1\27\1\45\1\1\4\5\1\0\1\25"+
    "\2\5\1\46\1\47\5\5\1\50\1\51\1\0\3\5"+
    "\1\52\2\5\1\0\3\5\1\53\1\54\2\5\1\55"+
    "\1\56\1\5\1\57\1\0\1\60\1\61\4\5\1\0"+
    "\1\62\3\5\1\63\1\0\1\64\2\5\1\0\1\5"+
    "\1\65\1\0\1\66\5\0\1\67\1\0\1\70";

  private static int [] zzUnpackAction() {
    int [] result = new int[165];
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
    "\0\0\0\70\0\160\0\70\0\250\0\70\0\340\0\u0118"+
    "\0\u0150\0\u0188\0\u01c0\0\u01f8\0\70\0\u0230\0\u0268\0\u02a0"+
    "\0\u02d8\0\u0310\0\u0348\0\u0380\0\u03b8\0\u03f0\0\u0428\0\u0460"+
    "\0\u0498\0\u04d0\0\u0508\0\u0540\0\u0578\0\u05b0\0\u05e8\0\u0620"+
    "\0\u0658\0\u0690\0\u06c8\0\u0700\0\70\0\70\0\70\0\70"+
    "\0\70\0\70\0\70\0\u0738\0\u0770\0\u07a8\0\u07e0\0\u0818"+
    "\0\u0850\0\u0888\0\u08c0\0\u08f8\0\u0930\0\u0118\0\u0968\0\u09a0"+
    "\0\u09d8\0\u0a10\0\u0a48\0\u0a80\0\u0a80\0\u03b8\0\70\0\u0ab8"+
    "\0\u0af0\0\70\0\70\0\u0b28\0\u0b60\0\u0118\0\70\0\70"+
    "\0\70\0\70\0\70\0\70\0\u0b98\0\u0bd0\0\u0c08\0\u0c40"+
    "\0\70\0\u0c78\0\u0cb0\0\u0ce8\0\u0d20\0\u0d58\0\u0d90\0\u0118"+
    "\0\u0dc8\0\u0e00\0\u0e38\0\u0118\0\u0e70\0\u0ea8\0\u0ee0\0\u0f18"+
    "\0\70\0\u0ab8\0\u0f50\0\u0f88\0\u0fc0\0\u0ff8\0\u1030\0\u1068"+
    "\0\u0c78\0\u10a0\0\u10d8\0\u0118\0\u1110\0\u1148\0\u1180\0\u11b8"+
    "\0\u11f0\0\u1228\0\u0118\0\u1260\0\u0428\0\u1298\0\u12d0\0\u1308"+
    "\0\u0118\0\u1340\0\u1378\0\u13b0\0\u13e8\0\u1420\0\u1458\0\u1490"+
    "\0\u0118\0\u14c8\0\u1500\0\u0118\0\u0118\0\u1538\0\u0118\0\u1570"+
    "\0\u0118\0\u0118\0\u15a8\0\u15e0\0\u1618\0\u1650\0\u1688\0\70"+
    "\0\u16c0\0\u16f8\0\u1730\0\u0118\0\u1768\0\u0118\0\u17a0\0\u17d8"+
    "\0\u1810\0\u1848\0\u0118\0\u1880\0\u0118\0\u18b8\0\u18f0\0\u1928"+
    "\0\u1960\0\u1998\0\u19d0\0\u1a08\0\70";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[165];
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
    "\1\2\1\3\2\4\1\5\1\6\1\7\1\10\1\11"+
    "\1\12\1\13\1\14\1\15\2\10\1\16\1\17\1\20"+
    "\2\10\1\21\1\10\1\22\1\10\1\23\1\2\1\24"+
    "\1\25\1\10\1\26\1\27\2\2\1\30\1\31\1\32"+
    "\2\10\1\33\1\34\1\35\1\36\1\37\1\40\1\41"+
    "\1\42\1\43\1\10\1\44\1\45\1\46\1\47\1\50"+
    "\1\51\1\52\1\53\72\0\1\4\71\0\1\54\1\55"+
    "\70\0\1\10\1\56\4\10\1\0\13\10\4\0\2\10"+
    "\5\0\4\10\6\0\4\10\15\0\6\10\1\0\13\10"+
    "\4\0\2\10\5\0\4\10\6\0\4\10\15\0\6\10"+
    "\1\0\13\10\4\0\2\10\5\0\4\10\6\0\1\57"+
    "\3\10\15\0\6\10\1\0\12\10\1\60\4\0\2\10"+
    "\5\0\4\10\6\0\4\10\15\0\6\10\1\0\6\10"+
    "\1\61\4\10\4\0\2\10\5\0\4\10\6\0\4\10"+
    "\15\0\6\10\1\0\1\62\12\10\4\0\2\10\5\0"+
    "\4\10\6\0\4\10\15\0\6\10\1\0\1\10\1\63"+
    "\11\10\4\0\2\10\5\0\4\10\6\0\4\10\15\0"+
    "\4\10\1\64\1\10\1\0\13\10\4\0\2\10\5\0"+
    "\4\10\6\0\4\10\15\0\6\10\1\0\5\10\1\65"+
    "\1\10\1\66\3\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\6\10\1\0\1\67\5\10\1\70\4\10"+
    "\4\0\2\10\5\0\4\10\6\0\4\10\15\0\6\10"+
    "\1\0\6\10\1\71\1\10\1\72\1\10\1\73\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\13\0\24\74\1\75"+
    "\2\74\1\0\34\74\32\0\1\24\41\0\27\76\1\77"+
    "\34\76\14\0\1\100\20\0\1\26\71\0\1\101\71\0"+
    "\1\102\70\0\1\103\33\0\6\10\1\0\13\10\4\0"+
    "\2\10\5\0\1\10\1\104\2\10\6\0\4\10\15\0"+
    "\4\10\1\105\1\10\1\0\1\106\12\10\4\0\2\10"+
    "\5\0\4\10\6\0\4\10\56\0\1\107\67\0\1\110"+
    "\67\0\1\111\67\0\1\112\73\0\1\113\70\0\1\114"+
    "\21\0\6\10\1\0\12\10\1\115\4\0\2\10\5\0"+
    "\4\10\6\0\4\10\15\0\6\10\1\0\3\10\1\116"+
    "\7\10\4\0\2\10\5\0\4\10\6\0\4\10\15\0"+
    "\6\10\1\0\1\117\12\10\4\0\2\10\5\0\4\10"+
    "\6\0\4\10\7\0\1\54\1\120\1\121\65\54\5\122"+
    "\1\123\62\122\6\0\2\10\1\124\3\10\1\0\13\10"+
    "\4\0\2\10\5\0\4\10\6\0\4\10\15\0\6\10"+
    "\1\0\4\10\1\125\6\10\4\0\2\10\5\0\4\10"+
    "\6\0\4\10\15\0\6\10\1\0\4\10\1\126\6\10"+
    "\4\0\2\10\5\0\4\10\6\0\4\10\15\0\2\10"+
    "\1\127\3\10\1\0\13\10\4\0\2\10\5\0\4\10"+
    "\6\0\4\10\15\0\6\10\1\0\13\10\4\0\2\10"+
    "\5\0\3\10\1\130\6\0\4\10\15\0\6\10\1\0"+
    "\13\10\4\0\2\10\5\0\4\10\6\0\1\10\1\131"+
    "\2\10\15\0\3\10\1\132\2\10\1\0\13\10\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\15\0\3\10\1\133"+
    "\2\10\1\0\13\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\6\10\1\0\3\10\1\134\7\10\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\15\0\6\10\1\0"+
    "\1\135\12\10\4\0\2\10\5\0\4\10\6\0\4\10"+
    "\15\0\6\10\1\0\10\10\1\136\2\10\4\0\2\10"+
    "\5\0\4\10\6\0\4\10\15\0\2\10\1\137\3\10"+
    "\1\0\13\10\4\0\2\10\5\0\4\10\6\0\4\10"+
    "\15\0\6\10\1\0\10\10\1\140\2\10\4\0\2\10"+
    "\5\0\4\10\6\0\4\10\37\0\1\141\74\0\1\142"+
    "\72\0\1\143\35\0\6\10\1\0\13\10\4\0\2\10"+
    "\5\0\2\10\1\130\1\10\6\0\4\10\15\0\6\10"+
    "\1\0\7\10\1\144\3\10\4\0\2\10\5\0\4\10"+
    "\6\0\4\10\15\0\6\10\1\0\4\10\1\145\6\10"+
    "\4\0\2\10\5\0\4\10\6\0\4\10\15\0\4\10"+
    "\1\146\1\10\1\0\13\10\4\0\2\10\5\0\4\10"+
    "\6\0\4\10\15\0\6\10\1\0\4\10\1\147\6\10"+
    "\4\0\2\10\5\0\4\10\6\0\4\10\11\0\1\121"+
    "\65\0\5\122\1\150\66\122\1\151\1\150\62\122\6\0"+
    "\3\10\1\152\2\10\1\0\13\10\4\0\2\10\5\0"+
    "\4\10\6\0\4\10\15\0\3\10\1\153\2\10\1\0"+
    "\13\10\4\0\2\10\5\0\4\10\6\0\4\10\15\0"+
    "\2\10\1\154\3\10\1\0\13\10\4\0\2\10\5\0"+
    "\4\10\6\0\4\10\15\0\4\10\1\155\1\10\1\0"+
    "\13\10\4\0\2\10\5\0\4\10\6\0\4\10\15\0"+
    "\6\10\1\0\6\10\1\156\4\10\4\0\2\10\5\0"+
    "\4\10\6\0\4\10\15\0\6\10\1\0\1\10\1\157"+
    "\11\10\4\0\2\10\5\0\4\10\6\0\4\10\15\0"+
    "\6\10\1\0\4\10\1\160\6\10\4\0\2\10\5\0"+
    "\4\10\6\0\4\10\15\0\6\10\1\0\10\10\1\161"+
    "\2\10\4\0\2\10\5\0\4\10\6\0\4\10\15\0"+
    "\2\10\1\162\3\10\1\0\13\10\4\0\2\10\5\0"+
    "\4\10\6\0\4\10\15\0\4\10\1\163\1\10\1\0"+
    "\13\10\4\0\2\10\5\0\4\10\6\0\4\10\15\0"+
    "\6\10\1\0\3\10\1\164\7\10\4\0\2\10\5\0"+
    "\4\10\6\0\4\10\45\0\1\165\37\0\6\10\1\0"+
    "\10\10\1\166\2\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\6\10\1\0\6\10\1\167\4\10\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\15\0\6\10\1\0"+
    "\10\10\1\170\2\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\6\10\1\0\13\10\4\0\2\10\5\0"+
    "\3\10\1\171\6\0\4\10\7\0\4\122\1\121\1\150"+
    "\62\122\6\0\4\10\1\172\1\10\1\0\13\10\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\15\0\6\10\1\0"+
    "\11\10\1\173\1\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\6\10\1\0\13\10\2\0\1\174\1\0"+
    "\2\10\5\0\4\10\6\0\4\10\15\0\6\10\1\0"+
    "\4\10\1\175\6\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\6\10\1\0\3\10\1\176\7\10\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\15\0\6\10\1\0"+
    "\5\10\1\177\5\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\3\10\1\200\2\10\1\0\13\10\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\15\0\2\10\1\201"+
    "\3\10\1\0\13\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\6\10\1\0\4\10\1\202\6\10\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\15\0\6\10\1\0"+
    "\1\10\1\203\11\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\4\10\1\204\1\10\1\0\13\10\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\15\0\6\10\1\0"+
    "\13\10\4\0\2\10\5\0\4\10\6\0\2\10\1\205"+
    "\1\10\15\0\5\10\1\206\1\0\13\10\4\0\2\10"+
    "\5\0\4\10\6\0\4\10\15\0\6\10\1\0\12\10"+
    "\1\207\4\0\2\10\5\0\4\10\6\0\4\10\30\0"+
    "\1\210\54\0\6\10\1\0\11\10\1\211\1\10\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\15\0\6\10\1\0"+
    "\5\10\1\212\5\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\6\10\1\0\2\10\1\213\10\10\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\15\0\6\10\1\0"+
    "\4\10\1\214\6\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\6\10\1\0\5\10\1\215\5\10\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\15\0\6\10\1\0"+
    "\6\10\1\216\4\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\6\10\1\217\13\10\4\0\2\10\5\0"+
    "\4\10\6\0\4\10\33\0\1\220\51\0\6\10\1\0"+
    "\1\10\1\221\11\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\6\10\1\0\5\10\1\222\5\10\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\15\0\6\10\1\0"+
    "\2\10\1\223\10\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\3\10\1\224\2\10\1\0\13\10\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\24\0\1\225\60\0"+
    "\3\10\1\226\2\10\1\0\13\10\4\0\2\10\5\0"+
    "\4\10\6\0\4\10\15\0\6\10\1\0\2\10\1\227"+
    "\10\10\4\0\2\10\5\0\4\10\6\0\4\10\15\0"+
    "\6\10\1\0\1\10\1\230\11\10\4\0\2\10\5\0"+
    "\4\10\6\0\4\10\25\0\1\231\57\0\6\10\1\0"+
    "\1\10\1\232\11\10\4\0\2\10\5\0\4\10\6\0"+
    "\4\10\15\0\3\10\1\233\2\10\1\0\13\10\4\0"+
    "\2\10\5\0\4\10\6\0\4\10\20\0\1\234\64\0"+
    "\3\10\1\235\2\10\1\0\13\10\4\0\2\10\5\0"+
    "\4\10\6\0\4\10\23\0\1\236\72\0\1\237\70\0"+
    "\1\240\70\0\1\241\70\0\1\242\56\0\1\243\101\0"+
    "\1\244\66\0\1\245\45\0";

  private static int [] zzUnpackTrans() {
    int [] result = new int[6720];
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
    "\1\1\1\11\1\1\1\11\1\1\1\11\6\1\1\11"+
    "\27\1\7\11\1\1\1\0\16\1\1\0\1\1\1\0"+
    "\1\11\2\0\2\11\3\1\6\11\4\1\1\11\2\0"+
    "\15\1\1\11\6\1\1\0\14\1\1\0\6\1\1\0"+
    "\13\1\1\0\6\1\1\0\1\11\4\1\1\0\3\1"+
    "\1\0\2\1\1\0\1\1\5\0\1\1\1\0\1\11";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[165];
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

    private Symbol symbol(int type){
        return new Symbol(type, yyline + 1, yycolumn + 1);
    }

    public void setFrameCTDOA(FrameCTDOA frameCTDOA) {
        this.frameCTDOA = frameCTDOA;
    }



  /**
   * Creates a new scanner
   * There is also a java.io.InputStream version of this constructor.
   *
   * @param   in  the java.io.Reader to read input from.
   */
  public LexicoJava(java.io.Reader in) {
    this.zzReader = in;
  }

  /**
   * Creates a new scanner.
   * There is also java.io.Reader version of this constructor.
   *
   * @param   in  the java.io.Inputstream to read input from.
   */
  public LexicoJava(java.io.InputStream in) {
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
        case 43: 
          { return new Symbol(sym.FLOAT, yycolumn, yyline, yytext());
          }
        case 57: break;
        case 6: 
          { return new Symbol(sym.PUNTO, yycolumn, yyline, yytext());
          }
        case 58: break;
        case 8: 
          { return new Symbol(sym.MAS, yycolumn, yyline, yytext());
          }
        case 59: break;
        case 31: 
          { return new Symbol(sym.MAYOR_IGUAL, yycolumn, yyline, yytext());
          }
        case 60: break;
        case 32: 
          { return new Symbol(sym.AND, yycolumn, yyline, yytext());
          }
        case 61: break;
        case 49: 
          { return new Symbol(sym.RETURN, yycolumn, yyline, yytext());
          }
        case 62: break;
        case 26: 
          { return new Symbol(sym.MENOS_MENOS, yycolumn, yyline, yytext());
          }
        case 63: break;
        case 16: 
          { return new Symbol(sym.COMA, yycolumn, yyline, yytext());
          }
        case 64: break;
        case 55: 
          { return new Symbol(sym.CONSOLA, yycolumn, yyline, new String(yytext()));
          }
        case 65: break;
        case 38: 
          { return new Symbol(sym.THIS, yycolumn, yyline, yytext());
          }
        case 66: break;
        case 24: 
          { return new Symbol(sym.CADENA, yycolumn, yyline, new String(yytext()));
          }
        case 67: break;
        case 10: 
          { return new Symbol(sym.IGUAL, yycolumn, yyline, yytext());
          }
        case 68: break;
        case 41: 
          { return new Symbol(sym.CHAR, yycolumn, yyline, yytext());
          }
        case 69: break;
        case 2: 
          { frameCTDOA.addErrores(
                      "\nError Lexico: "
              + "\n\tLinea #:                     << " + (yyline + 1) + " >> "
              + "\n\tColumna #:                   << " + (yycolumn + 1) + " >> "
              + "\n\tToken NO Reconocido:         << " + yytext() + " >> ");
          }
        case 70: break;
        case 48: 
          { return new Symbol(sym.PUBLIC, yycolumn, yyline, yytext());
          }
        case 71: break;
        case 39: 
          { return new Symbol(sym.ELSE, yycolumn, yyline, yytext());
          }
        case 72: break;
        case 37: 
          { return new Symbol(sym.REAL, yycolumn, yyline, Float.parseFloat(yytext()));
          }
        case 73: break;
        case 52: 
          { return new Symbol(sym.IINPUT, yycolumn, yyline, new String(yytext()));
          }
        case 74: break;
        case 47: 
          { return new Symbol(sym.SWITCH, yycolumn, yyline, yytext());
          }
        case 75: break;
        case 25: 
          { return new Symbol(sym.MAS_MAS, yycolumn, yyline, yytext());
          }
        case 76: break;
        case 4: 
          { return new Symbol(sym.POR, yycolumn, yyline, yytext());
          }
        case 77: break;
        case 30: 
          { return new Symbol(sym.MENOR_IGUAL, yycolumn, yyline, yytext());
          }
        case 78: break;
        case 33: 
          { return new Symbol(sym.OR, yycolumn, yyline, yytext());
          }
        case 79: break;
        case 54: 
          { return new Symbol(sym.FINPUT, yycolumn, yyline, new String(yytext()));
          }
        case 80: break;
        case 12: 
          { return new Symbol(sym.MENOR, yycolumn, yyline, yytext());
          }
        case 81: break;
        case 53: 
          { return new Symbol(sym.CINPUT, yycolumn, yyline, new String(yytext()));
          }
        case 82: break;
        case 34: 
          { return new Symbol(sym.MOD, yycolumn, yyline, yytext());
          }
        case 83: break;
        case 3: 
          { return new Symbol(sym.DIV, yycolumn, yyline, yytext());
          }
        case 84: break;
        case 9: 
          { return new Symbol(sym.MENOS, yycolumn, yyline, yytext());
          }
        case 85: break;
        case 21: 
          { mc.addComentario(yytext());
          }
        case 86: break;
        case 50: 
          { return new Symbol(sym.ELSE_IF, yycolumn, yyline, yytext());
          }
        case 87: break;
        case 36: 
          { return new Symbol(sym.FOR, yycolumn, yyline, yytext());
          }
        case 88: break;
        case 15: 
          { return new Symbol(sym.DOS_PUNTOS, yycolumn, yyline, yytext());
          }
        case 89: break;
        case 13: 
          { return new Symbol(sym.MAYOR, yycolumn, yyline, yytext());
          }
        case 90: break;
        case 19: 
          { return new Symbol(sym.PARENTESIS_A, yycolumn, yyline, yytext());
          }
        case 91: break;
        case 35: 
          { return new Symbol(sym.INT, yycolumn, yyline, yytext());
          }
        case 92: break;
        case 7: 
          { return new Symbol(sym.NUMERO, yycolumn, yyline, Integer.parseInt(yytext()));
          }
        case 93: break;
        case 29: 
          { return new Symbol(sym.DIFERENTE, yycolumn, yyline, yytext());
          }
        case 94: break;
        case 27: 
          { return new Symbol(sym.DO, yycolumn, yyline, yytext());
          }
        case 95: break;
        case 22: 
          { return new Symbol(sym.IF, yycolumn, yyline, yytext());
          }
        case 96: break;
        case 17: 
          { return new Symbol(sym.CORCHETE_A, yycolumn, yyline, yytext());
          }
        case 97: break;
        case 5: 
          { return new Symbol(sym.ID, yycolumn, yyline, new String(yytext()));
          }
        case 98: break;
        case 56: 
          { return new Symbol(sym.CONSOLA_LINEA, yycolumn, yyline, new String(yytext()));
          }
        case 99: break;
        case 44: 
          { return new Symbol(sym.CLASS, yycolumn, yyline, yytext());
          }
        case 100: break;
        case 20: 
          { return new Symbol(sym.PARENTESIS_C, yycolumn, yyline, yytext());
          }
        case 101: break;
        case 40: 
          { return new Symbol(sym.CASE, yycolumn, yyline, yytext());
          }
        case 102: break;
        case 11: 
          { return new Symbol(sym.NOT, yycolumn, yyline, yytext());
          }
        case 103: break;
        case 51: 
          { return new Symbol(sym.DEFAULT, yycolumn, yyline, yytext());
          }
        case 104: break;
        case 1: 
          { /*Ignore*/
          }
        case 105: break;
        case 14: 
          { return new Symbol(sym.PUNTO_COMA, yycolumn, yyline, yytext());
          }
        case 106: break;
        case 46: 
          { return new Symbol(sym.BREAK, yycolumn, yyline, yytext());
          }
        case 107: break;
        case 42: 
          { return new Symbol(sym.VOID, yycolumn, yyline, yytext());
          }
        case 108: break;
        case 45: 
          { return new Symbol(sym.WHILE, yycolumn, yyline, yytext());
          }
        case 109: break;
        case 23: 
          { return new Symbol(sym.CARACTER, yycolumn, yyline, new String(yytext()));
          }
        case 110: break;
        case 18: 
          { return new Symbol(sym.CORCHETE_C, yycolumn, yyline, yytext());
          }
        case 111: break;
        case 28: 
          { return new Symbol(sym.IGUAL_IGUAL, yycolumn, yyline, yytext());
          }
        case 112: break;
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
      System.out.println("Usage : java LexicoJava <inputfile>");
    }
    else {
      for (int i = 0; i < argv.length; i++) {
        LexicoJava scanner = null;
        try {
          scanner = new LexicoJava( new java.io.FileReader(argv[i]) );
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
