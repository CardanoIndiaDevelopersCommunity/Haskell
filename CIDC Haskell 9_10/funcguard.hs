{-
  Guards is a concept that is very similar to pattern matching. 
  In pattern matching, we usually match one or more expressions, 
  but we use guards to test some property of an expression.

Although it is advisable to use pattern matching over guards, 
but from a developer’s perspective, guards is more readable and simple. 

For first-time users, guards can look very similar to If-Else statements, 
but they are functionally different.
-}

fact :: Integer -> Integer 
fact n | n == 0 = 1 
       | n /= 0 = n * fact (n-1) 
main = do 
   putStrLn "The factorial of 5 is:"  
   print (fact 5)