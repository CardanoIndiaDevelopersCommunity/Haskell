{-
    ---Handling Binary Data---
    Many programming problems call for the use of binary formats for compactness, ease-of-use, compatibility 
    or speed. This Haskell quickly covers some common libraries for handling binary data in Haskell.

    Bytestrings
---------------------
Normal Haskell String types are linked lists of 32-bit characters.  This has a number of useful properties like 
coverage of the Unicode space and laziness comes to dealing with bytewise data. String involves a space-inflation 
of about 24x and a large reduction in speed.

Bytestrings are packed arrays of bytes or 8-bit chars. If you have experience in C, 
their memory representation would be the same as a uint8_t[]—although bytestrings know their length 
and don't allow overflows, etc.

There are two major flavours of bytestrings: "strict and lazy".  

	1. Strict ByteStrings keep the string as a single large array. This makes them convenient for passing data between C and Haskell.

	2. Lazy ByteStrings use a lazy list of strict chunks which makes it suitable for I/O streaming tasks.

When reading a lazy bytestring from a file, the data will be read chunk by chunk and the file can be larger 
than the size of memory. The default chunk size is currently 32K.

Within each flavour of bytestring comes the Word8 and Char8 versions.  
	1. The Word8 unpacks as a list of Word8 elements (bytes), 
	2. The Char8 unpacks as a list of Char, which may be useful if you want to convert them to Strings.

You might want to open the documentation for strict bytestrings and lazy bytestrings in another tab so 
that you can follow along.
-}

module Main where

import qualified Data.ByteString as B

main :: IO ()
main = do
  contents <- B.getContents
  B.putStr contents