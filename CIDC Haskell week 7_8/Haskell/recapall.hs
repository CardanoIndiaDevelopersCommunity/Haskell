{-
    When covering the vital Functor and Monad type classes, we glossed over a third type class: 
    Applicative, the class for applicative functors. Like monads, applicative functors are functors 
    with extra laws and operations; in fact, Applicative is an intermediate class between Functor and Monad.
    Applicative is a widely used class with a wealth of applications. 
    It enables the applicative style, a convenient way of structuring functorial computations, 
    and also provides means to express a number of important patterns.

    Functor recap:-
    -----------------------------
    Functor is characterised by the fmap function:

    class Functor f where
        fmap :: (a -> b) -> f a -> f b

    If a type is an instance of Functor, you can use fmap to apply a function to values in it. 
    Another way of describing fmap is saying that it promotes functions to act on functorial values.
    To ensure fmap works sanely, any instance of Functor must comply with the following two laws:

        fmap id = id                   -- 1st functor law
        fmap (g . f) = fmap g . fmap f -- 2nd functor law

 Maybe, for example, has a Functor instance, and so we can easily modify the value inside it...

    Prelude> fmap negate (Just 2)
            Just (-2)
...as long as it exists, of course.

    Prelude> fmap negate Nothing
            Nothing
fmap has an infix synonym, (<$>). It often helps readability, and also suggests how fmap can be seen as 
a different kind of function application.

    Prelude> negate <$> Just 2
                Just (-2)

    Application in functors
    ----------------------------
    
-}