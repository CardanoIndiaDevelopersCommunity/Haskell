{-
    Haskell functions and used different ways to call those functions. 
    In this chapter, we will learn about some basic functions that can be easily 
    used in Haskell without importing any special Type class. 
    Most of these functions are a part of other higher order functions.
-}
main = do 
   let x = [1..10]   
   putStrLn "Our list is:"  
   print (x) 
   putStrLn "\nThe head of the list is:" 
   print (head x)
   putStrLn "\nThe tail of our list is:" 
   print (tail x) 
   putStrLn "\nThe last element of our list is:" 
   print (last x)
   putStrLn "\nOur list without the last entry:"  
   print (init x) 
   putStrLn "\nIs our list empty?"  
   print (null x)
   putStrLn "\nThe list in Reverse Order is:" 
   print (reverse x)
   putStrLn "\nThe length of this list is:" 
   print (length x)
   
