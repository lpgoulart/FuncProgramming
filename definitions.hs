three :: Integer -> Integer
three x = 3

infinity :: Integer
infinity = infinity + 1

double :: Integer -> Integer
double 2 = 2
double x = x + x


multiply :: (Integer, Integer) -> Integer
multiply (x,y) = x * y

-- practicing
-- change the variable type
tipo :: Integer -> Float
tipo x = a
	where a = fromInteger x :: Float

--print messages with values of expressions
printest :: Integer -> ([Char], Float)
printest x = ("testing", a)
	where a = fromInteger x :: Float


