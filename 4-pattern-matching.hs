-- Pattern matching is the basic tool for accessing elements in list and tuples

-- Implementing: fst, snd, null, head
myFst (a,b) = a
mySnd (a,b) = b

myNull [] = True -- handles empty list
myNull (x : xs) = False -- handles all list with at least one element (x)

myHead [] = error "Head of Emtpy List" -- handle error of empty list
myHead (x : xs) = x -- handle valid cases

-- double function using pattern matching
double [] = []  -- case of empty list
double (x : xs) = (2 * x) : (double xs)

