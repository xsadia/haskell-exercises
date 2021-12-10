module Main where 

in_range :: Integer -> Integer -> Integer -> Bool
in_range min max x = x >= min && x <= max

-- let bindings
in_range_bindings :: Integer -> Integer -> Integer -> Bool
in_range_bindings min max x = 
    let in_lower_bound = min <= x -- bind the result of an expression to a name
        in_upper_bound = max >= x
    in
    in_lower_bound && in_upper_bound -- produce end expression in relation to the binds

-- where binding
in_range_where :: Integer -> Integer -> Integer -> Bool
in_range_where min max x  = ilb && iub -- final expression
    where
        ilb = min <= x -- say what the values (ilb and iub) are binded to
        iub = max >= x

-- if statements 
in_range_if :: Integer -> Integer -> Integer -> Bool
in_range_if min max x =
    if ilb then iub else False -- used to provide the same result as boolean AND
    where
        ilb = min <= x
        iub = max >= x


main :: IO()
main = undefined

{-
    bool in_range(int min, int max, int x) {
        return x >= min && x <= max;
    }
-}