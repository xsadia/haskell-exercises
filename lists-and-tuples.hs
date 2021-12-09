module Main where

import Data.List

{- Creating a list -}
asc :: Int -> Int -> [Int]
asc n m
    | m < n = [] -- if m is less than n return empty array
    | m == n = m:[] -- if m is equal to n return a array with the number m
    | m > n = n : asc (n + 1) m -- if m is bigger than n we recursively construct the new list
                                -- by prepanding n than calling asc with an increment to n
                                -- n at some point will hit the value of m and return ta last version
                                -- of the list

{-
    -------------------------------------------------------------
    important functions on lists
    -------------------------------------------------------------
    head :: [a] -> a: gives you the first element of a list
    tail :: [a] -> [a]: gives you the tail of a list (list without the first element)
    length :: [a] -> Int: gives you the length of a list
    init :: [a] -> [a] gives you a list with the last element removed
    null :: [a] -> Bool return a bool determining if the list is empty or not
    --------------------------------------------------------------
    functions on lists of booleans
    --------------------------------------------------------------
    and :: [Bool] -> Bool: does the boolean and on any amount of elements on a list of booleans
    or :: [Bool] -> Bool: does the boolean or on any amount of elements on a list of booleans
-}

{- 
    List comprehension is used to take one list or multiple lists
    and return new lists out of them:
    [2*x | x <- [1, 2, 3]]: [2, 4, 6]
    [2*x | x <- [1, 2, 3], x > 1]: [4, 6] -- using guard to ignore all xs that are smaller than 1
    Using multiple lists:
    You first go through the first list starting from the first element
    then go through the second list. So we start at element of list x 1 then
    go through the second list ['a', 'b']
    [(x, y) | x <- [1, 2 ,3], y <- ['a', 'b']]: [(1, a), (1, b), (1, c), (2, a), (2, b) ...]
-}

{- List Patterns -}
sumList :: [Int] -> Int 
sumList [] = 0
sumList (x:xs) = x + sumList xs

evens :: [Int] -> [Int]
evens [] = []
evens (x:xs) 
    | mod x 2 == 0 = x : evens xs
    | otherwise    = evens xs

{-
    Tuples
    (1, 2) :: (Int, Int)
    let (x, y) = (1, 2) in x
-}
idk :: Int
idk = let (x, y) = (1, 2) in y -- 2

addTuples :: [(Int, Int, Int)] -> [Int]
addTuples xs = [x + z | (x, y, z) <- xs]


main :: IO ()
main = undefined 
