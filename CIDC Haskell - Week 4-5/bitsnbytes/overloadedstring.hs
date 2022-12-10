{-
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