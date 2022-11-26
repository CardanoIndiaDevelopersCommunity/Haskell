-- Read interface does the same thing as Show, 
--but it won’t print the result in String format. 

main = print (readInt "12") 
readInt :: String -> Int 
readInt = read