-- Leonardo Goulart
-- Resolution for the 99 problems Haskell 
-- UFRN

module Hs99Problems where

-- Problem 1
-- (*) Find the last element of a list. 
myLast :: [a] -> a
myLast [] = undefined
myLast [x] = x
myLast (_:xs) = myLast xs

-- Problem 2
-- (*) Find the last but one element of a list.
myButLast :: [a] -> a
myButLast [] = undefined
myButLast (x:[y]) = x
myButLast (_:xs) = myButLast xs

-- Problem 3
-- (*) Find the K'th element of a list. The first element in the list is number 1. 
elementAt :: [a] -> Integer -> a
elementAt [] y = undefined
elementAt (x:_) 1 = x
elementAt (_:xs) y
	| y < 1 = undefined
	| otherwise = elementAt xs (y-1)

-- Problem 4
-- (*) Find the number of elements of a list. 
myLength :: [a] -> Integer
myLength x = sum [1 | _ <- x]

-- Problem 5
-- (*) Reverse a list. 
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = reverse xs ++ [x]

-- Problem 6
-- (*) Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x). 
--isPalindrom :: [a] -> Bool
