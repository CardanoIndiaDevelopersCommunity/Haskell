{-
    Applicative Functor :-
    ---------------------------
An Applicative Functor is a normal Functor with some extra features provided by 
the Applicative Type Class.

Using Functor, we usually map an existing function with another function defined inside it. 
But there is no any way to map a function which is defined inside a Functor with another Functor. 
That is why we have another facility called Applicative Functor. 
This facility of mapping is implemented by Applicative Type class defined under the Control module. 
This class gives us only two methods to work with: one is pure and the other one is <*>.

Following is the class definition of the Applicative Functor.

class (Functor f) => Applicative f where   
   pure :: a -> f a   
   (<*>) :: f (a -> b) -> f a -> f b   

   According to the implementation, we can map another Functor using two methods: "Pure" and "<*>".
   The "Pure" method should take a value of any type and it will always return 
   an Applicative Functor of that value.

   Applicative pushes Functor aside. "Big boys can use functions with any number of arguments,"
     it says. "Armed <$> and <*>
    
    ghci> (*) <$> Just 5 <*> Just 3 //output : Just 15

-}

import Control.Applicative 

f1:: Int -> Int -> Int 
f1 x y = 2*x+y  
main = do  
   print(show $ f1 <$> (Just 1) <*> (Just 2) )