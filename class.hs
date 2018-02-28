module Curry where
import Prelude hiding ( curry )

-- calcular hipotenusa
pyth :: Double -> Double -> Double
pyth x y = sqrt (x ** 2 + y ** 2)

pyth' :: (Double, Double) -> Double
pyth' (x,y) = sqrt ( x ** 2 + y ** 2 )

myCurry :: ((Double, Double) -> Double) -> (Double -> Double -> Double)
myCurry f x y = f (x,y)

unCurry :: (Double -> Double -> Double) -> ((Double, Double) -> Double)
unCurry f (x,y) = f x y

-- Playing with types

curry2 :: ( (a,b) -> c ) -> a -> ( b -> c )
curry2 f x = g
	where
	  g u = f (x,u)

curry3 :: ( (a,b) -> c ) -> a -> b -> c
curry3 f x y = f(x,y)

uncurry2' :: (a -> b -> c) -> (a,b) -> c
uncurry2' f w = f(fst w)(snd w)

uncurry2 :: (a -> b -> c ) -> (a,b) -> c
uncurry2 f (x,y) = f x y
