import Control.Monad.State

calcFib :: State (Integer, Integer) Integer 
calcFib = do 
    (num1, num2) <- get 
    put(num2, (num1 + num2))
    return num1 

fiboList :: State (Integer, Integer) [Integer]
fiboList = do 
    num <- calcFib
    nextNum <- fiboList 
    return (num : nextNum)

main :: IO ()
main = do 
    print (take 10 fibs)
    where 
    fibs = evalState fiboList (0,1)

