module ColorRGBCMYK (Color) where 

-- Algebraic data types
-- #3 sum and product combination

-- RGB and CMYK are product types, Color howerver is a sum type
data Color = RGB Int Int Int | CMYK Float Float Float Float deriving Show


-- x = RGB 32 42 53  ~ :type x (x :: Color) 
-- y = CMYK 4.3 0.2 1.3 3.5  ~ :type y (y :: Color)
