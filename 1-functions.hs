-- creating a function no return keyword
mySquare x = x * x

--mySquare 9

-- You can call functions from function
-- multiply max of a,b by x

multMax a b x = (max a b) * x
--multMax 5 3 9

-- Simple conditional
posOrNeg x =
     if x >= 0
     then  "Positive"
     else  "Negative"