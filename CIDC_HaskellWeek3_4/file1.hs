{-
    We have so far hard-coded all the inputs in the program itself. We have been taking inputs from 
    static variables. Now, let us learn how to read and write from an external file.

    Let us create a file and name it "abc.txt". Next, enter the following lines in this text file: 
    "Welcome to Cardano India Developers Community. Here, you will get the best resource to learn Haskell.
    https://github.com/CardanoIndiaDevelopersCommunity/Upskilling_Cardano"

    Next, we will write the following code which will display the contents of this file on the console. 
    Here, we are using the function readFile() which reads a file until it finds an EOF character.

    If the File "abc.txt" not found in the current location then an exception is generated.

    Here, We only read a file from an existing filename : abc.txt.

    ghci> main
*** Exception: abc.txt: openFile: does not exist (No such file or directory)
-}

main = do  
   let file = "abc.txt" 
   contents <- readFile file 
   putStrLn contents  