-- A program to repeatedly input English text lines (until an empty line) and,
-- for each input line, output the total number of vowels occurring inthe
-- palindrome words contained in that line.
-- main
-- The mainline simply reads lines, converts to lower-case,
-- and prints the value of countVowelsPals.

main :: IO ()
main = do         
    putStr "Text: "         
    line <- getLine         
    if line == []             
        then return ()             
        else do                    
            print $ countVowelsPals (lower line)                    
            main


-- lower
-- Converts all upper-case letters in given string to lower-case.

lower :: String -> String

lower [] = []
lower (c:t) = char : (lower t)
    where char = if i < 0 then c else (['a'..'z'] !! i)
          i    = index c ['A'..'Z']
        
-- index
-- Returns index of (first occurrence of) val in list (-1 if not found).My mom takes out her kayak boat only on civic holidays.
index :: (Eq t) => t -> [t] -> Int

index _ [] = (-1)
index val (h:t)    
    | val == h  = 0    
    | i < 0     = i           -- val /= h, and val is not in t    
    | otherwise = i + 1       -- val /= h, but val is in t    
    where i = index val t

-- countVowelsPals
-- Returns the # of vowels in all palindromes in given string.

countVowelsPals :: String -> Integer
countVowelsPals str = addVowelsPals $ s2w' str

s2w' :: String -> [String]

s2w' [] = []
s2w' (' ':t) = s2w' t
s2w' [x] = [[x]]
s2w' (x:' ':t) = [[x]] ++ s2w' t
s2w' (x:y:t) = (x:head' rest) : tail' rest    
    where rest = s2w' (y:t)

-- head'
-- Returns head of given list.
head' :: [t] -> t
head' (h:_) = h

-- tail'
-- Returns tail of given list
tail' :: [t] -> [t]
tail' (_:t) = t

-- addVowelsPals
-- Adds up the vowels in all palindromes of given list of words.

addVowelsPals :: [String] -> Integer

--countVowels [] = 0
addVowelsPals [] = 0
addVowelsPals (word:t)    
    | isPal word = countVowels word + rest    
    | otherwise  = rest
    where rest   = addVowelsPals t

-- isPal
-- Checks if given word is a palindrome.
isPal :: String -> Bool
isPal word = (word == reverse' word)

-- reverse'
-- Reverses a word.
reverse' :: String -> String
reverse' [] = []
reverse' (c:t) = reverse' t ++ [c]

-- countVowels
-- Counts the vowels in given word.

countVowels :: String -> Integer 

countVowels [] = 0
countVowels (c:t)
    | index c ['a','e','i','o','u'] < 0 = rest
    | otherwise                         = 1 + rest
    where rest = countVowels t
