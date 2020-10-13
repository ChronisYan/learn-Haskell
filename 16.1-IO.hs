
-- reads a line and writes You typed ++ line to the console
main :: IO ()
main = do 
    line <- getLine  -- the <- binds an IO action to a variable line (can only be used in a do-block)
    putStrLn("You typed: " ++ line)
