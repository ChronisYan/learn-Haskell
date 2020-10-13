-- Codewars https://www.codewars.com/kata/5544c7a5cb454edb3c000047/train/haskell

bouncingBall :: Double -> Double -> Double -> Integer 
bouncingBall h b w 
    | h <= 0 || b <= 0 || b >= 1 || w >= h = -1 
    | otherwise = (+1) (2* (validBounce (h*b) b w))

validBounce h b w 
    | w >= h   = 0 
    | otherwise = (+1) (validBounce (h*b) b w )
