{-
    ByteStrings and Unicode:-
====================================
ByeString character functions only work with ASCII text, hence the Char8 in the package name. 
If you try and use unicode Strings it will mess up:
-}
import qualified Data.ByteString.Char8 as BC

hello      = "你好" --Result of this character is invalid and an exception but Not compile time error.
--hello = "manoj"
helloBytes = BC.pack hello

main = do
    putStrLn hello
    BC.putStrLn helloBytes
    print $ BC.length helloBytes