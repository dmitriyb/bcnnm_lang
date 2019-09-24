package com.DSL_plugin;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;
import com.DSL_plugin.psi.DSLTypes;
import com.intellij.psi.TokenType;

%%

%class BCNNMLexer
%implements FlexLexer
%unicode
%function advance
%type IElementType
%eof{  return;
%eof}

// If some character sequence is matched to this regex, it will be treated as an IDENTIFIER.
// If some character sequence is matched to this regex, it will be treated as an IDENTIFIER.
IDENTIFIER=[a-zA-Z_][a-zA-Z0-9_]*

// If some character sequence is matched to this regex, it will be treated as a WHITE_SPACE.
WHITE_SPACE=[ \t\n\x0B\f\r]+

// Initial state. We can specify mutiple states for more complex grammars. This corresponds to `modes` in ANTLR grammar.
%%
<YYINITIAL> {
  // In here, we match keywords. So if a keyword is found, this returns a token which corresponds to that keyword.
  // These tokens are generated using the `Ballerina.bnf` file and located in the SimpleTypes `class`.
  // These tokens are Parser uses these return values to match token squence to a parser rule.
  "function"         { return FUNCTION; } // This indicates that the `function` keyword is encountered.
  "returns"          { return RETURNS; }  // This indicates that the `returns` keyword is encountered.
  "int"              { return INT; }      // This indicates that the `int` keyword is encountered.
  "string"           { return STRING; }   // This indicates that the `string` keyword is encountered.

  // In here, we check for character sequences which matches regular expressions which we defined above.
  {IDENTIFIER}       { return IDENTIFIER; } // This indicates that a character sequence which matches to the rule
                                            // identifier is encountered.
  {WHITE_SPACE}      { return WHITE_SPACE; } // This indicates that a character sequence which matches to the rule
                                             // whitespace is encountered.
}

// If the character sequence does not match any of the above rules, we return BAD_CHARACTER which indicates that
// there is an error in the character sequence. This is used to highlight errors.
[^] { return BAD_CHARACTER; }