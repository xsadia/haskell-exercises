module Main where

findElem :: (Eq a) => a -> [a] -> Bool
findElem _ [] = False
findElem n (x:xs) 
  | n == x = True
  | otherwise = elem n xs

{- 
  Proposed solution
  elem :: (Eq a) => a -> [a] -> Bool
  elem _ [] = False
  elem e (x:xs) = (e == x) || (elem e xs)
-}

nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x:xs)
  | findElem x xs = nub xs -- or x `findElem` xs = nub xs
  | otherwise = x : nub xs

isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [x] = True
isAsc (x:y:xs) =
  (x <= y) && isAsc(y:xs)

hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] x y = x == y
hasPath xs x y
  | x == y = True
  | otherwise = 
    let xs' = [(n, m) | (n, m) <- xs, n /= x] in
      or [ hasPath xs' m y | (n, m) <- xs, n == x]

hasPath (x:xs) from to = 

main :: IO ()
main = undefined