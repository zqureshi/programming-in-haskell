-- Did not get this variant, had to look up in Appendix
thirdWithHead :: [a] -> a
thirdWithHead xs = (head (tail (tail xs)))

thirdWithIndex :: [a] -> a
thirdWithIndex xs = xs!!2

thirdWithPattern :: [a] -> a
thirdWithPattern (_:_:x:_) = x
