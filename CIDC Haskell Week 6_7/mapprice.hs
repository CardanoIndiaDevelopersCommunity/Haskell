{-
    Haskell Maps
    ================
       => A map is a higher-order function that requires an array and another function. 
        The other function is applied to the array and returns a new array, based on the application.

        => A higher-order function is a function that operates another function. 
        In Haskell, and a lot of other programming languages, mapping is a process of applying 
        the map higher-order function on an array to transform it.

    Second Question: why do maps matter?
    =======================================
       => When we need to transform into something else, the process of doing each transformation individually can be time-consuming and 
        repetitive. The process of mapping automates this process and condenses it down to a repeatable pattern that gets applied 
        in a function and predictable manner.

    How do you write a map in Haskell?
    =====================================
        => Haskell takes a function and a list, then applies that function to every element in the list to produce a new list. 
        Here is the syntax example of how it works:

        map :: (a -> b) -> [a] -> [b]

        => The function (a -> b) is an exact copy transformation from a to b, which means that the mapped array of [b] is going to be exactly
         the same as [a].

         For e.g. =>
         -----------------------------------------------------
            module MapCube where
            mapcube a = map (^3) a
        
        => mapcube takes in the parameter of a , where it is then used by the map function against the function declared. 
        So when we run our module, we will get our returned array as cubed results.

            ghci > :l MapCube
                     mapcube [1,2,3,4]

        => mapcube[1,2,3,4] will return [1,8,27,64] as the new mapped array. 
        This is because the function (^3) is applied to each value in the array.

        -----------------------------------------------------------------------------------
    => Let’s take a look at another example of a Haskell map.

        module MapTax where
        maptax price = map (*1.15) price

    => In this example, the tax rate is 15% on top of the given value. So when we run it:

        ghci> :l MapTax
                maptax [12.45, 13.00, 45.65]

 => maptax [12.45, 13.00, 45.65] will return [14.32, 14.95, 52.50] because  the function (*1.15) is applied to each individual array item that got passed in.

=> We can abstract the function out into another function like this below mentioned:

    module MapTax where
 ​
    taxrate n = n * 1.15
    maptax price = map taxrate price

    ghci> :l maptax 
            maptax [2,4,7,8]


-}

module MapCube where
    mapcube x y = map (^x) y 

    main = do
        putStrLn "Enter a array list :"
        print(mapcube (2) [1,2,3,4])