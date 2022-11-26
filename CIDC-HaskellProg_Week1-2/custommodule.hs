module Custom ( 
     showBoolean 
) where 



showBoolean :: Bool->Int 
showBoolean cs = do 

if cs == True 
   then 1 
else 0 
