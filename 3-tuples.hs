-- tuples can be used to "package" a few values together
-- unlike list tuple can hold various data types and they have fixed length
x = ("Hello", 2)

-- tuples can be used to return multiple values from a function
headAndTail list = (head list, tail list)

-- fst and snd can be used to access the first and seconds element of a tuple of length 2
x1 = fst x
x2 = snd x