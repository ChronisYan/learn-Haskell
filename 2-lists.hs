-- List can only contain elements of the same type
-- declaring a list
x = [1 ,2 ,3]
empty = []

-- pre-append item to list :
y = 0 : x -- creates new list: [0,1,2,3] (x is not modified)
z = 1 : 2 : 3 : 4 : [] -- z is [1,2,3,4]

-- string are lists so
str = "abcd"
-- is equivalent to
str2 = 'a' : 'b' : 'c' : 'd' : []

-- ++ is the concat operator, it returns a new list
x2 = z ++ x -- [1,2,3,4,1,2,3]

-- list functions
head x -- returns the first element of a list
tail x -- returns a new list of elements of x but the first
null empty -- returns true of a list is empty, false if it's not

