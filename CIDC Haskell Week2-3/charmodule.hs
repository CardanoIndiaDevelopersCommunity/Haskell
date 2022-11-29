{-
      The Haskell standard library is split into modules, each of them contains functions and types 
      that are somehow related and serve some common purpose. There's a module for manipulating lists, 
      a module for concurrent programming, a module for dealing with complex numbers, etc. 

      The syntax for importing modules in a Haskell script is import <module name>. 
      This must be done before defining any functions, so imports are usually done at the top of the file. 
      One script can, of course, import several modules. Just put each import statement into a separate line. 
      Let's import the Data.List module, which has a bunch of useful functions for working with lists and 
      use a function that it exports to create a function that tells us how many unique elements a list has.
-}

import Data.Char 

main = do  
   putStrLn("Different methods of Char Module") 
   print(toUpper 'a') 
   print(words "Let us study tonight") 
   print(isUpper 'A')
   print(isLower 'A')
   print(isDigit 'A')
   print(isDigit '1')