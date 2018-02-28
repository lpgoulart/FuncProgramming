module Curry where
import Prelude hiding ( curry )
-- calcular hipotenusa
pyth :: Double -> Double -> Double
pyth x y = sqrt (x ** 2 + y ** 2)

pyth' :: (Double, Double) -> Double
pyth' (x,y) = sqrt ( x ** 2 + y ** 2 )

myCurry :: ((Double, Double) -> Double) -> (Double -> Double -> Double)
myCurry f x y = f (x,y)

unCarry :: (Double -> Double -> Double) -> ((Double, Double) -> Double)
unCarry f (x,y) = f x y
