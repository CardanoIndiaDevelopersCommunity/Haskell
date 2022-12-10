{-
    Lazy ByteStrings:-
 -------------------------------   
ByteString also has a lazy version, which is a better choice if you are processing large amounts of data 
    and don't want to read it all into memory at once. Just import Data.ByteString.Lazy 
    instead of Data.ByteString. Sometimes you will find libraries which use one type 
    when you are using the other. For example, Aeson uses lazy ByteStrings, but you may only be dealing 
    with small JSON snippets and want to write your own code using the strict version. 
    You can convert between them easily enough if you have to:
-}
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.ByteString.Char8 as BC
import qualified Data.ByteString.Lazy.Char8 as BLC

strict = BC.pack "I'm a strict ByteString (or am I)"
lazy = BLC.pack "I'm a lazy ByteString (or am I)"

strictToLazy = BL.fromChunks [strict]
lazyToStrict = B.concat $ BL.toChunks lazy

main = do
    BLC.putStrLn strictToLazy
    BC.putStrLn lazyToStrict
