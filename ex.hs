module Main where
{- my version -}
elems :: (Eq a) => a -> [a] -> Bool 
elems a [] = False
elems a (x:xs) 
  | x == a = True
  | otherwise = elems a xs

{- 
Proposed solution
elem :: (Eq a) => a -> [a] -> Bool
elem _ [] = False
elem e (x:xs) = (e == x) || (elem e xs)
-}

main :: IO ()

main = do 
  putStrLn "Hello, World!"

