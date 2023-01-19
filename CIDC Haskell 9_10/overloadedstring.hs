{-

    Pragmas
    ===============
GHC supports several pragmas, or instructions to the compiler placed in the 
source code. Pragmas don't normally affect the meaning of the program, 
but they might affect the efficiency of the generated code.

Pragmas all take the form {-# word ... #-} where word indicates the type of pragma, 
and is followed optionally by information specific to that type of pragma. 
Case is ignored in word. The various values for word that GHC understands are 
described in the following sections; any pragma encountered with an 
unrecognised word is ignored. The layout rule applies in pragmas, 
should start in a column to the right of the opening {-#. 
so the closing #-} 

Certain pragmas are file-header pragmas:

A file-header pragma must precede the module keyword in the file.

There can be as many file-header pragmas as you please, and they can be preceded 
or followed by comments.

File-header pragmas are read once only, before pre-processing the file (e.g. with cpp).

The file-header pragmas are: {-# LANGUAGE #-}, {-# OPTIONS_GHC #-}, and {-# INCLUDE #-}.
  The OverloadedStrings Language Extension
  ---------------------------------------------
When you enter a string literal, Haskell will normally assume it is of type String ([Char]). 
This useful language extension allows us to have string literals interpreted as ByteStrings, 
provided we import Data.ByteString.Char8:

Here we have used pragma:- {-# LANGUAGE OverloadedStrings #-}. If we will not use this then show error:
    overloadedstring.hs:15:9: error:
    * Couldn't match type `[Char]' with `B.ByteString'
      Expected: B.ByteString
        Actual: String

      If we don't want to use pragma then start ghci with following ways:
      
      $ ghci -XOverloadedStrings  ( overloadedstring.hs, interpreted ) 
      While compiled the process is 

      Once ghci started with this overloadedString then no need of pragma.
-}

 {-# LANGUAGE OverloadedStrings #-}
 
import Data.ByteString.Char8 ()
import qualified Data.ByteString as B

bytes = "I'm a ByteString, not a [Char]" :: B.ByteString

str   = "I'm just an ordinary [Char]"    :: String

main = do
  print bytes
  print str