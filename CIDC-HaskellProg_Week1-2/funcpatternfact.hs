{-
    Pattern Matching is process of matching specific type of expressions. 
    It is nothing but a technique to simplify your code. 
    This technique can be implemented into any type of Type class. 
    If-Else can be used as an alternate option of pattern matching.

    Pattern Matching can be considered as a variant of dynamic polymorphism where at runtime, 
    different methods can be executed depending on their argument list.

    Imp :- When the pattern of the argument exactly matches with 0, 
    it will call our pattern which is "fact 0 = 1". 
-}
fact :: Int -> Int 
fact 0 = 1 
fact n = n * fact ( n - 1 ) 

main = do 
   putStrLn "The factorial of 5 is:" 
   print (fact 5)