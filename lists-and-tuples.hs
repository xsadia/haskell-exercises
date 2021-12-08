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

main :: IO ()
main = undefined 