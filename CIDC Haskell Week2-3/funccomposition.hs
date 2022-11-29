{-
    Function Composition:-
    with any two functions, where the argument type of the first is the return type of the second. 
    The newly created function takes what the second function would as a parameter and feeds 
    it through the second function, then the result of the second function through the first function, 
    and returns the result of the first function.  if you have two functions f(x) and g(x), 
    you compute their composition as f(g(x)). The expression f(g(x)) first calls g and then calls f.

    (.) :: (b -> c) -> (a -> b) -> (a -> c)
    (f.g) x = f (g x)
    print (oddno.evno) 3)=print (oddno(evno 3)) //either way you can call the function. OR

    print (oddno.evno)(3))
-}

evno :: Int -> Bool 
oddno  :: Bool -> String 

evno x = if x `rem` 2 == 0 
   then True 
else False 
oddno x = if x == True 
   then "This is an even Number" 
else "This is an ODD number" 

main = do 
   putStrLn "1st called Candano India Developers Community. Then result..." 
   print (oddno(evno 3))