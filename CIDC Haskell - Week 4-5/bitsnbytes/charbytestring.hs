{-
    Of course we don't need to unpack the "ByteString" to a list to get the first element. 
    We can just use the "head" functions provided by the library itself.
   
    Here, instead of 
        print $ head bytes
        print $ head chars

    we are using :- bytestring
   
     print $ B.head bytestring
     print $ BC.head bytestring

     Results : both output are same.
-}

import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as BC

bytestring = BC.pack "I'm a ByteString, not a [Char]"

main = do
    BC.putStrLn bytestring
    print $ B.head bytestring
    print $ BC.head bytestring
    