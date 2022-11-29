
{-
    The syntax for importing modules in a Haskell script is import <module name>. 
    This must be done before defining any functions, so imports are usually done at the top of the file. 
    One script can, of course, import several modules. Just put each import statement into a separate line.
    List provides some wonderful functions to work with list type data. Once you import the List module, 
    you have a wide range of functions at your disposal.
-}
import Data.List  

main = do  
   putStrLn("Different methods of List Module") 
   print(intersperse '.' "CardanoIndiaDevelopersComunity") 
   print(intercalate " " ["Lets","Start","with","Haskell"]) 
   print(splitAt 7 "HaskellTutorial") 
   print (sort [8,5,3,2,1,6,4,2])