-- lambda (\parms -> logic)
lessThanFive x = filter (\x -> x < 5) x

-- this func defines its own helper func (quotify) that is only used once
suspiciousquotes s = unwords $ map quotify (words s)
  where quotify s = "'" ++ s ++ "'"

-- instead of writing a helper func you can use a lambda func  
suspiciousquotes' s = unwords $ map (\s -> "'" ++ s ++ "'") (words s)

-- the quotify func can be written in many ways
quotify s = "'" ++ s ++ "'"        -- normal function
quotify' = \s -> "'" ++ s ++ "'"   -- lambda 
quotify'' = ("'" ++ ) . (++ "'")   -- function composition 

