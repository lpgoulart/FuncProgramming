module Append where

append :: a -> [a] -> [a]
append x xs = xs ++ [x]

(<:) :: a -> [a] -> [a]
(<:) x xs = append x xs
-- x (<:) xs = xs ++ [x]
--(<:) = append


