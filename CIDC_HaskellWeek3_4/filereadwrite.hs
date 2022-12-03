{-
    Here, We do both write to a file and read operation from a file from a filename : xyz.txt 
    or any new name  in the file="filename.txt".
-}

main = do  
   let file = "xyz.txt" 
   writeFile file "Join Discord for Question and Answer! Cardano India Developers Community"
   contents <- readFile file 
   putStrLn contents  