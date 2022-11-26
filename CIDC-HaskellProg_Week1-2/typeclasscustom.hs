{-
    Haskell allows developers to define user-defined types. 
    In the following example, we will create a user-defined type and use it.
-}
data Area = Circle Float Float Float  
surface :: Area -> Float   
surface (Circle _ _ r) = pi * r ^ 2   
main = print (surface $ Circle 10 20 10 )

{-
    Keep in mind that "data" is a keyword here and all user-defined types 
    in Haskell always start with a capital letter.
    
    Here, we have created a new type called Area. 
    Next, we are using this type to calculate the area of a circle. 
    In the above example, "surface" is a function that takes Area as an input and 
    produces Float as the output.

    
    It will produce the following output −
     
    314.15927
-}