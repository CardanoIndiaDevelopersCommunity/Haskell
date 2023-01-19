{-
    Monoids
We all know Haskell defines everything in the form of functions. 
In functions, we have options to get our input as an output of the function. 
This is what a Monoid is.

A Monoid is a set of functions and operators where the output is independent of its input. 
Let’s take a function (*) and an integer (1). Now, whatever may be the input, 
its output will remain the same number only. That is, if you multiply a number by 1,
     you will get the same number.

     Here is a Type Class definition of monoid.


-}

multi:: Int->Int 
multi x = x * 1 
add :: Int->Int 
add x = x + 0 

main = do  
   print(multi 9)  
   print (add 7)