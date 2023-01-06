{-
    
    Functor in Haskell is a typeclass that provides two methods – fmap and (<$) –
    for structure-preserving transformations. To implement a Functor instance for a data type,
    you need to provide a type-specific implementation of fmap – the function we already covered.

    The map function can be applied to nothing more than list of values (where values are of any type) 
    whereas the fmap function can be applied much more data types: 
    all of those which belongs to the functor class (e.g. maybes, tuples, lists, etc.).
    Since the "list of values" data type is also a functor (because it provides an implementation for it) 
    then fmap can be applied to is as well producing the very same result as map.
    
    Functor in Haskell is a kind of functional representation of different Types 
    which can be mapped over. It is a high level concept of implementing polymorphism. 
    According to Haskell developers, all the Types such as List, Map, Tree, etc. 
    are the instance of the Haskell Functor.

    A Functor is an inbuilt class with a function definition like −

    class Functor f where 
     fmap :: (a -> b) -> f a -> f b 

    By the above definition, we can conclude that the Functor is a function which takes a function,
    say, fmap() and returns another function. In the above example,
    fmap() is a generalized representation of the function map().

    Here, we have used both map() and fmap() over a list for a subtraction operation. 
    You can observe that both the statements will yield the same result of a list containing 
    the elements [1,3,7,15].

    Both the functions called another function called subtract() to yield the result.

    map  (+3) [1..5]
    fmap (+3) (Just 15)
    fmap (+3) (5, 7)

    -----------------------
    ghci>  fmap (+3) (Just 2)   //output: Just 5
    ghci> (+3) <$> (Just 2)     //output: Just 5

    ghci> [(*2), (+3)] <*> [1, 2, 3]  //output : [2,4,6,4,5,6]

    ghci> Just (+5) <*> (Just 3)  // output : Just 8

    
    Then, what is the difference between map and fmap? The difference lies in their usage. 
    Functor enables us to implement some more functionalists in different data types, 
    like "just" and "Nothing".

    In the next example, you will see about the Just and Nothing.

-}

main = do  
   print(map (subtract 1) [2,4,8,16])      
   print(fmap (subtract 1) [2,4,8,16])