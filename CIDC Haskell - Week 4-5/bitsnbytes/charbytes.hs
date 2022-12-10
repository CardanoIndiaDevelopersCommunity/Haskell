{-
    BYTESTRING BITS AND PIECES
    ============================
        Characters or bytes:-
    -------------------------------
Depending on the context, we may prefer to view the ByteString as being made up of a list of elements 
of type Char or of Word8 (Haskell's standard representation of a byte). There's only one ByteString 
data structure for both, but the library exposes different functions depending on how we want to 
interpret the contents:
-}

import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as BC

bytestring = BC.pack "I'm a ByteString, not a [Char]"

bytes = B.unpack bytestring
chars = BC.unpack bytestring

main = do
    BC.putStrLn bytestring
    print $ head bytes
    print $ head chars