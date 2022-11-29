main :: IO()
main = do
    na <- getLine
    if na /= "quit" then do
        putStrLn ("Input: " ++ na)
        main  -- Here main is used to call main function repeatedly till quit. 
            -- If main is commented then once input program stopped.
    else
        --putStrLn("Hello World")
        return ()
       

       {-
            You can write return ()  or putStrLn("Hello World") here also.
       -}