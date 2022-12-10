{-
    Note that we are using strict bytestrings here. Since the bytestrings are strict, 
    the code will read the whole of stdin into memory and then write it out. 
    If the input was too large this would overflow the available memory and fail.

    Let's see the same program using lazy bytestrings. 
    We are just changing the imported ByteString module to be the lazy one and calling 
    the exact same functions from the new modules.

    The Char8 modules provide a character-based view of the same underlying ByteString types. 
    This makes it convenient to handle mixed binary and 8-bit character content
-}

module Main where

import qualified Data.ByteString.Lazy as BL

main :: IO ()
main = do
  contents <- BL.getContents
  BL.putStr contents