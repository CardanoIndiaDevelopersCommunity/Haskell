{--All the types having upper and lower bounds come under this Type Class. 
For example, Int type data has maximum bound of "9223372036854775807" and minimum bound 
of "-9223372036854775808".
--}
main = do 
   print (maxBound :: Int) 
   print (minBound :: Int)