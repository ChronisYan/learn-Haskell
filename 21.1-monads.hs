-- Reader Monad
-- https://hackage.haskell.org/package/mtl-2.2.2/docs/Control-Monad-Reader.html


import Control.Monad.Reader

-- data Reader r a   ~ r is the type of context value, a is the result 
-- instance Monda (Reader r)
-- ask :: Reader r r

getPart1 :: Reader String String
getPart1 = do 
    name <- ask 
    return (name ++ " ate a sandwich!")

getPart2 :: Reader String String
getPart2 = do 
    name <- ask
    return ("This was " ++ name ++ "'s best day ever!")

getStory:: Reader String String
getStory =  do 
    part1 <- getPart1 
    part2 <- getPart2 
    return ("Once upon a time " ++ part1 ++ " " ++ part2)

main :: IO ()
main = do 
    let story = runReader getStory "Steve"
    putStrLn story 

