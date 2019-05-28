safetailWithConditional :: [a] -> [a]
safetailWithConditional xs = if null xs then xs else tail xs

safetailWithGuards :: [a] -> [a]
safetailWithGuards xs
  | null xs = xs
  | otherwise = tail xs

safetailWithPattern :: [a] -> [a]
safetailWithPattern [] = []
safetailWithPattern (x:xs) = xs
