-- IO Actions
-- main ~ IO action executed by the program
-- do-Block chains multiple IO action 

helloWorld :: IO ()
helloWorld = putStrLn "Hello World"

sayHello :: String -> IO ()
sayHello name = putStrLn (name ++ " says Hello!")

main :: IO () 
main = do 
   helloWorld
   sayHello "Sarah"
