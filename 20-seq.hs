import Data.Sequence

-- https://hackage.haskell.org/package/containers-0.6.4.1/docs/Data-Sequence.html

-- Seq is an ordered data type similar to a list

-- empty :: Seq a 
-- (<|) :: a -> Seq a -> Seq a  ~ add elem to the front
-- (|>) :: Seq a -> a -> Seq a  ~ add elem to the back 
-- (><) :: Seq a -> Seq a -> Seq a ~ concat to Seqs
--
-- View Patterns
--
