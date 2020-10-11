module SimpleSumType  (Color) where 

-- ADT Algebraic Data Types
--  #1 sum types (similar to an emun in C++)

-- Color is a type while Red, Green, and Blue are values of Color
data Color = Red | Green | Blue deriving Show 

-- :info Color
-- :info Red (or Green or Blue)

-- x = Color (error) 
-- x = Red 
-- :type x (x :: Color)
