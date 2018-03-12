module MyMaybe where

data Maybe a = Nothing | Just a
	deriving (Eq, Show) 

--safeHead :: [a] -> Maybe a
--safeHead 
