module Main where

{- A higher order function is a function that takes a function as argument -}
app :: (a -> b) -> a -> b
app f x = f x

add1 :: Int -> Int
add1 x = x + 1

{- 
    Anonymous functions
    (\args -> expression)
    (\x -> x + 1)
    (\x y z -> x + y + z)
-}

{- Functions are just values in haskell -}
add1v2 = (\x -> x + 1)

{- Map -}
addTuples :: [(Int, Int)] -> [Int]
addTuples xs = map (\(x, y) -> x + y) xs

{- Filter -}
biggerThanTwo :: [Int] -> [Int]
biggerThanTwo [] = []
biggerThanTwo xs = filter (\x -> x > 2) xs

testFunc :: (Int -> Int -> Int) -> Int -> Int
testFunc f x = f x 2

main :: IO ()
main = undefined
