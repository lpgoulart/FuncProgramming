-- Some definitions of my own from chapter 2 of LYAH
-- Leonardo Goulart
-- Haskell language

module LYAH_Cap2 where

-- Head Function
-- Return the very first element of the list
my_head :: [a] -> a
my_head [] = undefined
my_head (x:xs) = x

-- Tail Function 
-- Remove the first element and return all the others
my_tail :: [a] -> [a]
my_tail [] = []
my_tail (x:xs) = xs

-- Last Function
-- Return the last element of the list
my_last :: [a] -> a
my_last [] = undefined
my_last [a] = a
my_last (x:xs) = my_last xs

-- Init Function
-- Remove the last element of the list
my_init :: [a] -> [a]
my_init [] = []
my_init [a] = []
my_init (x:(y:ys)) = [x] ++ my_init(y:ys)

-- Length Function
-- Return the number of elements on the list
my_length :: [a] -> Integer
my_length x = sum [1 | _ <- x]

-- Null Function
-- Check if your list is empty
my_null :: [a] -> Bool
my_null [] = True
my_null x = False

-- Take Function
-- Return the n terms of the list
my_take :: Integer -> [a] -> [a]
my_take 0 y = []
my_take x [] = []
my_take x (y:ys) = [y] ++ my_take (x - 1) ys

-- Drop Function
-- Remove the first n elements of the list
my_drop :: Integer -> [a] -> [a]
my_drop 0 y = y 
my_drop x [] = []
my_drop x (y:ys) = my_drop (x - 1) ys

-- Minimum Function
-- Return the minimum value of two numbers
my_min :: Ord a => a -> a -> a
my_min x y | x > y = y
 	   | otherwise = x 

-- Maximum Function
-- Return the maximum value os two numbers
my_max :: Ord a => a -> a -> a
my_max x y | x > y = x
	   | otherwise = y

-- Sum Function 
-- Sum all the values of a list that contains numbers
my_sum :: Num a => [a] -> a
my_sum [] = undefined
my_sum [x] = x
my_sum (x:xs) = x + my_sum(xs)

-- Product Function
-- Multiples every value of the list that contains numbers
my_prod :: Num a => [a] -> a
my_prod [] = undefined
my_prod [x] = x
my_prod (x:xs) = x * my_prod (xs)
