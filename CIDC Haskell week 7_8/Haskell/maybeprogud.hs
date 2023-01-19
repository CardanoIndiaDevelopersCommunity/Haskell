lookup' :: (Eq b) => b -> [(a,b)] -> Maybe a
lookup' _ [] =  Nothing
lookup' key ((x,y):xys)
  | key == y  =  Just x
  | otherwise =  lookup' key xys

database :: [(Integer, String)]
database = [(1, "Debasis"),
            (2, "Sohan"),
            (3, "Biswajit"),
            (4, "Tusar"),
            (5, "Arindam"),
            (6, "Rajeeb"),
            (7, "Satya")]

   
main = print $ lookup' "Debasis" database