main = do   
   let age = 20
   if (age >=1 && age<=18)
      then putStrLn "First birthday!" 
    else if (age>18 && age <=60)
        then putStrLn "You're an adult!"
    else if (age> 60) 
        then putStrLn "Finally, I can stop caring about new lingo!"
   else putStrLn "No one is born till date!"