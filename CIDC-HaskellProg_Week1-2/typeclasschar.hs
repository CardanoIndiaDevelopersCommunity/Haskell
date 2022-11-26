--Haskell is a functional language and it is strictly typed, which means the data type 
--used in the entire application will be known to the compiler at compile time.

-- the function fType() will behave according to its type defined.

fType :: Char-> Char 
fType x = 'K' 
main = do  
   let x = 'v' 
   print (fType x)