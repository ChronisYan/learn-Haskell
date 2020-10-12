-- type wrappers and multiple instances 
-- You can't have multiple implementations for the same type 
-- however you can create wrapper types to support this functionality

data Name = N {_first :: [Char], _last :: [Char]}

newtype FirstLast = FirstLast { unFirstLast :: Name }
instance Show FirstLast where 
  show n = let n' = unFirstLast n in "The name is " ++ 
       show(_first n') ++ " " ++
       show(_last n') ++ "." 

newtype LastFirst = LastFirst { unLastFirst :: Name }
instance Show LastFirst where 
  show n = let n' = unLastFirst n in 
       show(_last n') ++ ", " ++ 
       show(_first n') ++ " " ++ 
       show(_last n') 

main :: IO ()
main = do 
  print $ FirstLast (N "Steve" "Steveman")
  print $ LastFirst (N "James" "Bond")

