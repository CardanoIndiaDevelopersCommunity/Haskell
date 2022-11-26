--Haskell is a functional language and it is strictly typed, which means the data type 
--used in the entire application will be known to the compiler at compile time.

-- the function fType() will behave according to its type defined.

fType :: Float -> Float -> Float 
fType x y = x*x + y*y 
main = print (fType 2.5 3.8)