module Nat where

import Prelude hiding (even, odd)

data Nat = Zero | Succ Nat
	deriving (Show, Eq)

isZero :: Nat -> Bool
isZero Zero = True 
isZero _    = False

predec :: Nat -> Nat
predec (Succ x) = x
predec Zero     = Zero

even :: Nat -> Bool
even Zero = True
even (Succ Zero) = False
even (Succ ((Succ x))) = even x

odd :: Nat -> Bool 
odd = not . even
