-- the '.' operator is used to compose functions
doubleIt x = x *2
addTen x =  x + 10

-- addTen (doubleIt 5) == (addTen . doubleIt) 5

-- doubles a number and THEN adds 10 
doubleAndAddTen x = (addTen . doubleIt) x 
-- adds 10 to a number and THEN doubles the sum
addTenAndDouble x = (doubleIt . addTen) x


