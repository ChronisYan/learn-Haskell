module ColorRGB (Color) where 

-- Algebraic Data Types 
-- #2 product types (similar to a struct in C++)

data Color = RGB Int Int Int deriving Show
-- type is Color and RGB is a data constructor

-- x = RGB 10 20 30 

