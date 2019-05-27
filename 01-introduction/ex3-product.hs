product_ :: Num a => [a] -> a
product_ [] = 1
product_ (x:xs) = x * product_ xs
