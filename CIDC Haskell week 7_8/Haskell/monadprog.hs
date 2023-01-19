{-
   
   
    WHAT IS A MONAD
    ===========================
    A monad is a computational context. It provides a structure that allows you to chain together operations
     that have some kind of shared state or similar effect. Whereas "pure" code can only operate on explicit 
     input parameters and affect the program through explicit return values, operations in a monad can affect
      other computations in the chain implicitly through side effects, especially modification 
      of an implicitly shared value.

    Monads are nothing but a type of Applicative Functor with some extra features. 
    It is a Type class which governs three basic rules known as monadic rules.

    All the three rules are strictly applicable over a Monad declaration which is as follows −
   
    The minimal description of a monad class can be given a few ways, but the simplest is with the return 
    function and the bind operator, which looks like (>>=).

  class (Applicative m) => Monad m where
  return :: a -> m a
  (>>=) :: m a -> (a -> m b) -> m b

    The three basic laws that are applicable over a Monad declaration are −
    ------------------------------------------------------------------------------

Left Identity Law − The return function does not change the value and it should not change anything 
in the Monad. It can be expressed as "return >=> mf = mf".

Right Identity Law − The return function does not change the value and it should not change anything 
in the Monad. It can be expressed as "mf >=> return = mf".

Associativity − According to this law, both Functors and Monad instance should work in the same manner. 
It can be mathematically expressed as "( f >==>g) >=> h =f >= >(g >=h)".

  At first glance, this looks similar to the definition for the Applicative. The return function has 
  essentially the same type signature as the pure function. (And indeed, these almost always have the 
  same implementation). So a monad must also have a "default" way to wrap a value in the structure.

  The bind operator is similar to the application operator in that it chains two operations, 
  with one of them being function related.

  Let's compare the three primary functions of our typeclasses: fmap, the "apply" operator, and the "bind" operator. We'll use a flipped version of the bind operator ((=<<)) data-preserve-html-node="true" to better show the pattern.

(<$>) :: (a -> b) -> f a -> f b
(<*>) :: f (a -> b) -> f a -> f b
(=<<) :: (a -> f b) -> f a -> f b
  
  All these operators take a function of some kind, and then a structure wrapped over an a type, and then 
  produce a structure wrapping a b type. They just vary in what the function looks like. For the functor, 
  the function is a normal pure function. For applicatives, the function is still pure, 
  but wrapped in the structure. Now with monads, our function argument takes a "pure" input but produces 
  an output in the structure.

  
-}

main = do
   print([1..10] >>= (\x -> if odd x then [x*2] else []))