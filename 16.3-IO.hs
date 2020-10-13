-- Some useful IO Actions

putStrLn :: String -> IO ()
-- Prints a string to the console and appends a new line

getLine :: IO String
-- Reads a line from the console

print :: (Show a) => a -> IO ()
-- Prints a string representation of a value (the value must be in the show type class)

-- type FilePath = String 
readFile :: FilePath -> IO String 
-- Reads an entire file as a string (lazy)

writeFile :: FilePath -> String -> IO ()
-- Write a string to a file (lazy)

appendFile :: FilePath -> String -> IO ()
-- Appends a string to a file 

interact :: (String -> String) -> IO ()
-- takes a function String -> String and the resulting string is output on the standard output device 

