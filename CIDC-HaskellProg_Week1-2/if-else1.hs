main = do
    let var = 22
    if var `rem` 2 /= 0
        then putStrLn "Nunber is Odd"
    else putStrLn "Number is Even"