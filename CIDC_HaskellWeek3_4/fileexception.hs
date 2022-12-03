{-
    Exceptions :-
    -------------------
An exception can be considered as a bug in the code. It is a situation where the compiler does not get 
the expected output at runtime. Like any other good programming language, Haskell provides a way 
to implement exception handling.

If you are familiar with Java, then you might know the Try-Catch block where we usually throw an error 
and catch the same in the catch block. In Haskell, we also have the same function to catch runtime errors.

The function definition of try looks like "try :: Exception e => IO a -> IO (Either e a)". 
Take a look at the following example code. It shows how you can catch the "Divide by Zero" exception.


if we write Left and Right . output should be like this: 
    ghci> main
Caught exception: divide by zero
---------------------------------------
But without Left and Right. While compiling shows error but execute:
ghci> :l fileexception.hs
[1 of 1] Compiling Main             ( fileexception.hs, interpreted )

fileexception.hs:30:8: warning: [-Woverlapping-patterns]
    Pattern match is redundant
    In a case alternative: val -> ...
   |
30 |        val -> putStrLn $ "The answer was: " ++ show val
   |        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Ok, one module loaded.
ghci> main
Caught exception: Left divide by zero


-}

import Control.Exception 

main = do 
   result <- try (evaluate (5 `div` 0)) :: IO (Either SomeException Int) 
   case result of 
      Left ex   -> putStrLn $ "Caught exception: " ++ show ex 
     Right  val -> putStrLn $ "The answer was: " ++ show val 