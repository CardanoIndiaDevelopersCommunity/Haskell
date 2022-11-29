{-
    Check list is sorted in ascending order or not.Return Bool value [True or False]
-}
sorted :: (Ord a) => [a] -> Bool
sorted [] = True
sorted [x] = True
sorted (x:y:xs) = if x >= y then sorted (y:xs) else False

main= do
    putStrLn("Sorted listr :")
    print (sorted [100,90,80,70,50])

    {-
        Output is here is that x <=y from the list [10,20,30,40,50] means 1st one is x and 2nd one is y.
        Then the above list is sorted so returns true.
        If any previuos element is greater then next element then returns false.
        e.g:- sorted [10,20,30,400,50] . such that x=400 and y=50 false in this conditionas list. 
        So returns false.

        For Desending order:-
        list should be if x >= y then sorted (y:xs) .  e.g:- sorted [100,90,80,70,50]
    -}