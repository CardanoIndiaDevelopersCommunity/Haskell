
{-
    Int is a type class representing the Integer types data. 
    Every whole number within the range of 2147483647 to -2147483647 comes 
    under the Int type class. In the following example, 
    the function fType() will behave according to its type defined.
-}

fType :: Int -> Int -> Int 
fType x y = x*x + y*y
main = print (fType 2 4)