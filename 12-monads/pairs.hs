pairs :: [a] -> [b] -> [(a, b)]
pairs xs ys =
  xs >>= \x ->
  ys >>= \y ->
  pure (x, y)

doPairs :: (Num a, Num b) => [a] -> [b] -> [(a,b)]
doPairs xs ys =
  do x <- xs
     y <- ys
     return (x, y)
