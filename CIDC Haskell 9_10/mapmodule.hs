{-
    Map is an unsorted value-added pair type data type. 
    It is a widely used module with many useful functions.
     The following example shows how you can use a predefined 
     function available in the Map module.
-}
import Data.Map (Map) 
import qualified Data.Map as Map  --required for GHCI  

myMap :: Integer -> Map Integer [Integer] 
myMap n = Map.fromList (map makePair [1..n]) 
   where makePair x = (x, [x])  

main = print(myMap 3)