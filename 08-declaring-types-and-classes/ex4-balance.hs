data Tree a = Leaf a | Node (Tree a) (Tree a)
              deriving Show

-- copied from ex3
leaves :: Tree a -> Int
leaves (Leaf _) = 1
leaves (Node l r) = leaves l + leaves r

-- copied from ex3
balanced :: Tree a -> Bool
balanced (Leaf _) = True
balanced (Node l r) = abs (leaves l - leaves r) <= 1
                      && balanced l && balanced r

halve :: [a] -> ([a], [a])
halve [] = ([], [])
halve xs = (take mid xs, drop mid xs)
           where
             l = length xs
             mid = l `div` 2 + mod l 2

balance :: [a] -> Tree a
balance [a] = Leaf a
balance t = Node (balance l) (balance r)
            where (l, r) = halve t
