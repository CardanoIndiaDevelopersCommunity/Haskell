{-
    The Set module has some very useful predefined functions to manipulate mathematical data. 
    A set is implemented as a binary tree, so all the elements in a set must be unique.
-}

import qualified Data.Set as Set   

text1 = "Hey buddy"   
text2 = "This tutorial is for Haskell"   

main = do  
   let set1 = Set.fromList text1   
       set2 = Set.fromList text2 
   print(set1) 
   print(set2)