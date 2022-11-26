
main = print(take 5  ([1 .. 10]))

{-
        Paste one command inline and check.
     --------------------------------------------
        print(take 5  ([1 .. 10]))
        print(drop 5 ([1 .. 10])) 
        print(maximum([1 .. 10])) 
        print(minimum([1 .. 10])) 
        print(sum([1 .. 10])) 
        print(product([1 .. 10])) 


        Elem Function : - This function is used to check whether the supplied 
        list contains a specific element or not. Accordingly, 
        it either returns a true or a false.
        main = do 
         let x = [1,45,155,1785] 
            putStrLn "Our list is:" 
            print (x) 
            putStrLn "Does it contain 786?" 
            print (elem 786 (x))

            ------------Output-------------
                Our list is:
                    [1,45,155,1785]
                Does it contain 786?
                    False
            -------------------------------

        main = do 
        let x = [1,45,565,1245,02,2]   
            putStrLn "The maximum value element of the list is:"  
            print (maximum x)

            main = do 
            let x = [1,45,565,1245,02,2]   
                putStrLn "The minimum value element of the list is:"  
                print (minimum x)

                main = do 
                    let x = [1..5] 
                    putStrLn "Our list is:" 
                    print (x) 
                    putStrLn "The summation of the list elements is:" 
                    print (sum x)
-}