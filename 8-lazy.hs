-- Haskell only evaluates something when it is needed (lazy evaluation),
-- that means you can create "infinite" data structures

-- In other languages this would crash since it would call functions recursively for ever
-- However, Haskell will only compute whatever is needed
intsFrom n = n : (intsFrom (n+1)) -- This function takes an integer and returns a list of n, n+1, n+2, ...
ints = intsFrom 1

null ints -- False
head ints -- 1
-- take returns a sub-list of given length
take 10 ints -- haskell computes the first 10 items of the list and returns [1,2,..,10]

-- length ints ~ however will crash the program
removeOdds [] = []
removeOdds (x : xs)
    | mod x 2 == 0   = x : (removeOdds xs)
    | otherwise      = removeOdds xs

evens = removeOdds ints -- Nothing is done until it is needed
take 10 evens --  [2,4,...,20]