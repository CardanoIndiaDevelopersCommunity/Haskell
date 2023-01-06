main = do 
   print (fmap  (+7) (Just 10 ,20)) 
   print (fmap  (+7) Nothing)