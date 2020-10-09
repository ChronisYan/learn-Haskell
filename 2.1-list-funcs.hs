-- takes a list and returns a new list with each element doubled
double list =
  if null list
  then []
  else (2* (head list)) : (double (tail list))


-- takes a list and returns a new list with only the even numbers
removeOdds list =
    if null list
    then []
    else
        if (mod (head list) 2) == 0 -- num is even
        then (head list) : (removeOdds (tail list))
        else removeOdds (tail list)


-- Reverse a list
rev [] = []
rev xs = last xs : rev(init xs)

-- factorials #1
facA 2 = 2
facA n = n * facA (n-1)

-- factorials #2
facB n = product [2..n]

