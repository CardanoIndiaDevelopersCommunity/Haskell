{-
    Where is a keyword or inbuilt function that can be used at runtime 
    to generate a desired output. It can be very helpful 
    when function calculation becomes complex.

Consider a scenario where your input is a complex expression with multiple parameters. 
In such cases, you can break the entire expression into small parts 
using the "where" clause.

In the following example, we are taking a complex mathematical expression. 
We will show how you can find the roots of a polynomial equation [x^2 - 8x + 6] 
using Haskell.
-}
roots :: (Float, Float, Float) -> (Float, Float)  
roots (a,b,c) = (x1, x2) where 
   x1 = e + sqrt d / (2 * a) 
   x2 = e - sqrt d / (2 * a) 
   d = b * b - 4 * a * c  
   e = - b / (2 * a)  
main = do 
   putStrLn "The roots of our Polynomial equation are:" 
   print (roots(1,-8,6))