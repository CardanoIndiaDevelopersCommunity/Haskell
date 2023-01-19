{-
    Haskell Program to Swap Two Numbers
    =======================================
        Variables are immutable in Haskell i.e once declared their values 
        cannot be changed. So we cannot swap the values of two variables, 
        but we can mimic this by swapping values in a list and tuple.

    In this tutorial we see,

1. Program to swap two numbers in a binary tuple.
2. Program to swap two numbers in a list.
3. In Haskell, tuples are used to store elements of different data types as 
a collection. Tuples are identified by parenthesis at the ends. 
Tuples support only a few functions. Multiple tuples cannot be combined or merged. 
For example, a tuple looks like (“tusar”,24).
-}
-- function definition
swap (a,b) = (b,a)
main :: IO()
main = do
-- declaring and initializing tuple
   let arr = (24,"tusar")
-- invoking the function swap
   let revarr = swap arr
-- printing the reversed tuple
   print ("The actual tuple before the swap is:")
   print (arr) 
   print ("The resultant tuple after the swap is:")
   print (revarr)