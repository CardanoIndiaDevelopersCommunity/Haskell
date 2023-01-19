main = do 
   print (fmap  (+7) (Just 10 , 20 , 30)) 
   print (fmap  (+7) Nothing)
   print( (+3) <$> (Just 2))

   print([(*2), (+3)] <*> [1, 2, 3])


