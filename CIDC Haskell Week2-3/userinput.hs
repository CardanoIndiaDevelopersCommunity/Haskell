main = do  
    putStrLn "Hello, what's your name?"  -- print 
    name <- getLine  -- "<-" means put input results into name, getLine ask for input
    putStrLn ("Hey " ++ name ++ ", you rock!")  -- print