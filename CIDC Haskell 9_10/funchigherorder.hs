{-
    Till now, what we have seen is that Haskell functions take one type as input 
    and produce another type as output, which is pretty much similar in other 
    imperative languages. Higher Order Functions are a unique feature of Haskell 
    where you can use a function as an input or output argument.

    Although it is a virtual concept, but in real-world programs, every function that 
    we define in Haskell use higher-order mechanism to provide output. 
    If you get a chance to look into the library function of Haskell, 
    then you will find that most of the library functions have been written 
    in higher order manner.
-}

import Data.Char  
import Prelude hiding (map) 

map :: (a -> b) -> [a] -> [b] 
map _ [] = [] 
map func (x : abc) = func x : map func abc  
main = print $ map toUpper "Cardano India Developers Community"

{-
     Paste one command inline and check.
     --------------------------------------------
     print $ map toUpper "Cardano India Developers Community"
     print $ map toLower "Cardano India Developers Community"
     print $ map isUpper "Cardano India Developers Community"
     print $ map isLower "Cardano India Developers Community"
    
-}
        