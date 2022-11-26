
{-
    Functions play a major role in Haskell, as it is a functional programming language. 
    Like other languages, Haskell does have its own functional definition and declaration.

    1. Function declaration consists of the function name and 
            its argument list along with its output.

    2. Function definition is where you actually define a function.
-}
add :: Integer -> Integer -> Integer   --function declaration 
add x y =  x + y                       --function definition 

main = do 
   putStrLn "The addition of the two numbers is:"  
   print(add 2 5)    --calling a function