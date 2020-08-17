-- case expression of
-- pattern match case -> value when pattern match
-- pattern match case2 -> value when pattern match
-- ...
-- guards cannot be used with case expression

-- double function using case
double nums = case nums of
    []       -> [] -- empty list case
    (x : xs) -> (2 * x) : (double xs) -- non-empty list


removeOdd [] = []
removeOdd (x : xs)
      | mod x 2 == 0  = x : (removeOdd xs)
      | otherwise     = (removeOdd xs)

-- using case and the return value of a function
anyEven nums = case removeOdd nums of
    []        ->  False
    (x : xs)  -> True