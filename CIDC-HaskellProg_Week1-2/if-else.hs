main = do   
   let var = 23 
   if var `rem` 2 == 0 
      then putStrLn "Number is Even" 
   else putStrLn "Number is Odd"