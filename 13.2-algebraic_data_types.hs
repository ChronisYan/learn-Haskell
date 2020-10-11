module ColorRGBRecord (Color) where 

-- Algebraic Data Types 
-- #2.5 product type with Record syntax 

data Color = RGB 
  { red :: Int
  , green :: Int
  , blue :: Int 
  } deriving Show 

-- this is an atlernative way to declare product types
-- with record syntax Haskell creates accessor functions
-- x = RGB 10 20 30 
-- red x (10)
-- green x (20)
-- blue x (30)

-- y = x {green =  80} ~  doesn't modify x, only creates new y
-- y RGB {red = 10, green = 80, blue =30}
