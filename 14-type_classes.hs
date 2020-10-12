data Money = M 
  { dollar :: Integer
  , cents :: Int
  } 

-- if you don't implement show for Money, when try to print M it will crash
-- since print requires show 

instance Show Money where 
  show m = "$" ++ 
       show (dollar m) ++ " and " ++ 
       show (cents m) ++ " cents!" 
-- implementing show is so common that Haskell provides a default show method 
-- data foo = ... deriving Show 

-- You can implement other types for your types. 
-- You can find out what methods you need to implement in ghci :info something
--  (eg :info Num )

main :: IO ()
main = print $ M 10 50  
