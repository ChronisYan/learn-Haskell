import Data.Char

-- Caesar Cipher
cipher [] _ = []
cipher (x:xs) key
  | (c >= 65 && c <= 90) || (c >= 97 && c <= 122) = (rotateChar c (mod key 26)) : cipher xs key
  | otherwise = x : cipher xs key
  where c = ord x

rotateChar x key
  | x + key > 122 = chr(x + key - 26)
  | (x < 90) && (x + key > 90) = chr(x + key - 26)
  | otherwise = chr (x + key)
