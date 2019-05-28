luhnDouble :: Int -> Int
luhnDouble x
  | x > 4 = 2*x - 9
  | otherwise = 2*x

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d =
  total `mod` 10 == 0
  where
    total = (luhnDouble a) + b + (luhnDouble c) + d
