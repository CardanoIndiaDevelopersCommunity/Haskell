module CustomInt ( 
   showEvenOdd 
) where 

showEvenOdd:: Int-> Bool 
showEvenOdd x = do 

if x `rem` 2 == 0 
   then True 
else False 
