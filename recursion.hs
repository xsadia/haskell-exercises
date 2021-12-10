module Main where 

fac::Integer -> Integer
fac n = 
    if n <= 1 then
        1
    else
        n * fac(n - 1)

fac_guard::Integer -> Integer
fac_guard n
    | n <= 1 = 1
    | otherwise = n * fac (n - 1) -- otherwise is a constant that always resolves to True

fac_acc :: Integer -> Integer
fac_acc n = aux n 1 -- result of the aux expression
    where
        aux n acc -- definition of aux expression
            | n <= 1 = acc 
            | otherwise = aux (n - 1) (n * acc)

main :: IO ()
main = undefined
