{-
    Recursion is a situation where a function calls itself repeatedly. 
    Haskell does not provide any facility of looping any expression for more than once. 
    Instead, Haskell wants you to break your entire functionality into 
    a collection of different functions and use recursion technique to implement 
    your functionality.
-}

fact :: Int -> Int 
fact 0 = 1 
fact n = n * fact ( n - 1 ) 

main = do 
   putStrLn "The factorial of 5 is:" 
   print (fact 5)