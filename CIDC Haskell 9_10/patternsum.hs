sumInt :: Int -> Int
sumInt 0 = 0
sumInt x = x + sumInt (x - 1)

main = do 
   putStrLn "The square of 5 is:" -- adding text decsription
   print (sumInt 5) --calling the sq function and printing output