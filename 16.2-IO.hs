-- return in Haskell is a function that build an IO action 
-- it doesn't stop the execution of a function 

getUserInfo :: IO (String, String)
getUserInfo = do 
    putStrLn "What is your name?"
    name <- getLine
    putStrLn "What is your favorite programming language?"
    lang <- getLine 
    return (name, lang) 
    -- you could have return name and lang without return cuz the getUserInfo returns an IO action and not just strings 
    -- name and lang are string because the <- operator 

main :: IO ()
main =  do 
    (name, lang) <- getUserInfo
    putStrLn ("I'm sorry " ++ name ++ " but " ++ lang ++ " sucks!")
