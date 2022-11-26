--module Check where

--checkNumber :: Int -> String

main = do
let  y = 11
if (y `mod` 2) == 0
then putStrLn "even"
else putStrLn "odd"

