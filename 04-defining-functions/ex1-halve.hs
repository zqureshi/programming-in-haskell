halve :: [a] -> ([a], [a])
halve xs = (take midpoint xs, drop midpoint xs)
           where
             midpoint = (length xs) `div` 2
