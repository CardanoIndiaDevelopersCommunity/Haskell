{-
    fact :: Num a => a -> a
    fact 0 = 1
    fact n = n * fact(n-1)

    main :: IO ()
    main = do
     let x = 5
     print $ fact x

-- Generating the list of numbers from 1 to n
-- and calling the product function to multiply all the numbers in the list.
fact :: (Integral a) => a -> a
fact n = product [1..n] 
main = print (fact 5)

fact :: (Eq t, Num t) => t -> t
fact n = if n == 0 then 1 else n * fact(n-1)
main :: IO ()
main = print (fact 5)


(!) :: Integer -> Integer
(!) n | n == 0    = 1
      | n >  0    = n * ((n - 1) !)
      | otherwise = error "factorial of a negative number"

main = print (5 !)

-}
{-# LANGUAGE PostfixOperators #-}
{-# LANGUAGE OverloadedStrings #-}

(!) :: Integer -> Integer
(!) n | n == 0    = 1
      | n >  0    = n * ((n - 1) !)
      | otherwise = error "factorial of a negative number"

main = print (4 !)