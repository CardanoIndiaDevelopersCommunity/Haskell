sumInt :: Int -> Int
sumInt 0 = 0
sumInt x | x < 1 = error "sumInt undefined when x < 1" | otherwise = x + sumInt (x - 1)

main = do 
   putStrLn "The sum of the number is:" -- adding text decsription
   print (sumInt 0) --calling the sq function and printing output