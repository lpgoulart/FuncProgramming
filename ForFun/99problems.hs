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
