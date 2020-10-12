-- custom type class 
class Bopper α where
  bop :: α -> (String, Integer)

data A = A { aValue :: Int }
instance Bopper A where 
  bop a = let value = aValue a in (show value, toInteger value)

data B = B { bValue :: Integer }
instance Bopper B where 
  bop b = let value = bValue b in (show value, toInteger value)

data C = C { cValue :: Double }
instance Bopper C where 
  bop c = let value = cValue c in (show value, round value)

bopOutloud :: Bopper α => α -> IO ()
bopOutloud = print . bop 

main :: IO ()
main = do 
  bopOutloud (A 100)
  bopOutloud (B (2 ^ 64))
  bopOutloud (C 4.3245)
 
  
