-- #1 Map ~ applies a function to every element in a list 

map length ["hellow", "World", "the dog"] -- return a list of length of each word 
double = map (2*) -- doubles each element in a list  


-- #2 Filter ~ tests each element, keeps those that pass 

removeNull xs = filter (not .null) xs
-- removeNull ["fdds", "fds", "", "", "fdsfd", ""]
-- ["fdds","fds","fdsfd"]

isEven x = x `mod` 2 == 0 
removeOdd = filter isEven

-- [(True, 1),(False,2),(False, 3),(True, 4)] extract the num if True
getTrueNum xs = map snd (filter fst xs) -- filter based on fst, then map snd

-- #3 Fold Combine all the values in a list (foldl and foldr)

getSum xs = foldl (+) 0 xs 
getProduct xs = foldr (*) 1 xs 

-- foldl vs foldr 
-- foldl start from the left and foldr from the right
-- in the example above it doesn't matter but in other cases it does 

foldl (-) 0 [1,2,3] -- -6 ~ ((0-1) - 2) - 3 = - 1 - 2 - 3 = -6
foldr (-) 0 [1,2,3] --  2 ~ 1 - ( 2 - (3 - 0)) = 1 - (-1) = 2 

-- foldl is slightly faster 
-- foldr can be used on an infinite list, foldl can't


-- #4 Zip makes a list of tuples, each tuple conteining elements of both lists occuring at the same position

zip [1,2,3] [4,5,6] -- [(1,4), (2,5), (3,6)]
zip [1,2] [4,5,6,7,8] -- [(1,4), (2,5)] cuz zip needs an element for both lists

-- zipWith can be used to combine lists in different ways other than tuples 
zipWith (+) [1,2,3] [4,5,6]
-- [5,7,9]

-- there are also function for zipping more than 2 list eg: 
plus3 x y z = x + y + z
zipWith3 plus3 [1,2,3] [4,5,6] [7,8,9]
-- [12,15,18]

