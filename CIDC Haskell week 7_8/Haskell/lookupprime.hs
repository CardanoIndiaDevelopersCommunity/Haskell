-- | lookup' @key assocs@ looks up a value in an association list. While lookup
-- finds a tuple where the first value matches and returns the second, lookup'
-- does the opposite.
lookup' :: (Eq b) => b -> [(a,b)] -> Maybe a
lookup' _ [] =  Nothing
lookup' key ((x,y):xys)
  | key == y  =  Just x
  | otherwise =  lookup' key xys

-- Prints "Just 2".
main = print $ lookup' "two" [(1,"one"), (2,"two"), (3,"three")]