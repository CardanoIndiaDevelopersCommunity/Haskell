{-
    Function Composition is the process of using the output of one function as an 
    input of another function. It will be better if we learn the mathematics behind 
        composition. In mathematics, composition is denoted by f{g(x)} 
        where g() is a function and its output in used as an input of another function, 
        that is, f().

Function composition can be implemented using any two functions, 
provided the output type of one function matches with the input type of the second function. 
We use the dot operator (.) to implement function composition in Haskell.


-}

eveno :: Int -> Bool 
noto  :: Bool -> String 

eveno x = if x `rem` 2 == 0 
   then True 
else False 
noto x = if x == True 
   then "This is an even Number" 
else "This is an ODD number" 

main = do 
   putStrLn "Example of Haskell Function composition" 
   print ((noto.eveno)(16))

   {-
    Here, in the main function, we are calling two functions, noto and eveno, 
    simultaneously. The compiler will first call the function "eveno()" 
    with 16 as an argument. Thereafter, the compiler will use the output of 
    the eveno method as an input of noto() method.
   -}