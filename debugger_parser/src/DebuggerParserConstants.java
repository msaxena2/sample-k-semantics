/* Generated By:JavaCC: Do not edit this line. DebuggerParserConstants.java */

/**
 * Token literal values and constants.
 * Generated by org.javacc.parser.OtherFilesGen#start()
 */
public interface DebuggerParserConstants {

  /** End of File. */
  int EOF = 0;
  /** RegularExpression Id. */
  int STEP = 4;
  /** RegularExpression Id. */
  int BACKSTEP = 5;
  /** RegularExpression Id. */
  int JUMPTO = 6;
  /** RegularExpression Id. */
  int QUIT = 7;
  /** RegularExpression Id. */
  int CHECKPOINT = 8;
  /** RegularExpression Id. */
  int RESUME = 9;
  /** RegularExpression Id. */
  int NUMBER = 10;
  /** RegularExpression Id. */
  int STRING = 11;
  /** RegularExpression Id. */
  int NEWLINE = 12;

  /** Lexical state. */
  int DEFAULT = 0;

  /** Literal token values. */
  String[] tokenImage = {
    "<EOF>",
    "\" \"",
    "\"\\t\"",
    "\"\\r\"",
    "<STEP>",
    "<BACKSTEP>",
    "<JUMPTO>",
    "<QUIT>",
    "\"set-chkpt\"",
    "\"resume\"",
    "<NUMBER>",
    "<STRING>",
    "\"\\n\"",
  };

}
