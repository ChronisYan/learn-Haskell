-- implementation #1
isPal :: Eq a => [a] -> Bool
isPal str = str == reverse str

-- implementation #2
isPal2 :: Eq a => [a] -> Bool
isPal2 [x] = True
isPal2 [x, y] = x == y
isPal2 (x:xs) = (x == (last xs)) && isPal2 (init xs)
