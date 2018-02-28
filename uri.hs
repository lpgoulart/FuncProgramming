-- Uri Online Judge Resolution in Haskell
-- For Exercise
-- Leonardo Goulart
-- UFRN - Functional Programming

-- 1001 - Extremely Basic
add :: (Integer, Integer) -> Integer
add (x,y) = if(x < 0)
	then y + x
else x + y

-- 1002 - Area of a circle
oArea :: Float -> Float
oArea x = (x^2) * 3.14159

-- 1003 - Simple sum
-- Already solve by the definition of 1001

-- 1004 - Simple product
mult :: (Integer, Integer) -> Integer 
mult (x,y) = x * y

-- 1005 - Average 1
av2 :: (Float, Float) -> Float
av2 (x,y) = ((x*3.5) + (y*7.5))/11

-- 1006 - Average 2
av3 :: (Float, Float, Float) -> Float 
av3 (x,y,z) = ((x*2) + (y*3) + (z*5))/10

-- 1007 - Difference (between 4 numbers)
dif :: (Integer, Integer, Integer, Integer) -> Integer
dif (x,y,z,w) = (x*y - z*w)

-- 1008 - Salary
salary :: (Integer, Integer, Float) -> (Integer, Float)
salary (x,y,z) = (x, a*z)
	where a = fromInteger y :: Float

-- 1009 Salary with Bonus
salaryBonus :: ([Char], Float, Float) -> ([Char], Float)
salaryBonus (x, y, z) = ("TOTAL: " , y + ( z * 0.15 ))

-- 1010 - Simple Calculate
simCal :: (Integer, Integer, Float) -> (Integer, Integer, Float) -> Float
simCal (x,y,z)(a,b,c) = w*z + d*c
	where w = fromInteger y :: Float
	      d = fromInteger b :: Float


