module MapTax where
 
    taxrate n = n * 1.15
    maptax price = map taxrate price

    main = do
        putStrLn "Enter a array list :"
        print(maptax [1,2,3,4])