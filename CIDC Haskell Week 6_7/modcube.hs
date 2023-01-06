module MCube where
    mcube x = map (^3) x

    main = do
        putStrLn "Enter a array list :"
        print(mcube [1,2,3,4])