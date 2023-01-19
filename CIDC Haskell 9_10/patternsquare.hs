sq :: Int -> Int 
sq 0 = 1 --first pattern
sq n = n * n -- second pattern

main = do 
   putStrLn "The square of 5 is:" -- adding text decsription
   print (sq 5) --calling the sq function and printing output