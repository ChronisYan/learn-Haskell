-- Monads 101!!!

-- Monad Type Class 
-- Is a type class of parameterized types
-- Captures common patterns in IO, list, and Maybe 

class Monad m where 
    return :: a -> m a                  -- wrap value
    (>>=)  :: m a -> (a -> m b) -> m b  -- bind 

-- do notation is syntactic sugar for bind and lambda 
-- do 
--  x <- mx 
--  ... 
--
--  is the same as 
--  mx >>= (\x -> ...)
