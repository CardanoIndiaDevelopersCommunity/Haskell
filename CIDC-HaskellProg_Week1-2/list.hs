main = do
print("Demo to show list in Haskell !!")
let list1 = [100, 50, 235, 167, 345, 909, 675, 20] let list2 = [1, 2, 3, 4, 5, 6, 7, 8, 9] let list3 = [1.1, 2.2, 3.3, 4.4, 5.5, 6.6] let list4 = [5, 10, 15, 20, 15, 30, 35, 40] let list5 = ["hello", "world", "we ", "are ", "merging"] let list6 = ["list 2", "elements ", "are ", "here ", "success"] print("trying to merge the list objects !!")
let result1 = list1 ++ list2
let result2 = list3 ++ list4
let result3 = list5 ++ list6
print("printing the result after merge !!")
print("list one is ::", result1)
print("list two is ::", result2)
print("list three is ::", result3)