-- guard structure: | boolean expression  =  function to run
pow2 x -- calculates 2 to the x
    | x ==  0   = 1
    | otherwise = 2 * (pow2 (x -1))  -- otherwise is the catches all case (good practice)

-- removeOdd function using guards
removeOdd [] = []
removeOdd (x : xs)
    | mod x 2 == 0  = x : (removeOdd xs)
    | otherwise     = removeOdd xs