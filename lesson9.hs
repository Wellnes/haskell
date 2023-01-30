addBang [] = []
addBang (x:xs) = (x ++ "!") : addBang xs

squareAll [] = []
squareAll (x:xs) = x^2 : squareAll xs

myMap f [] = []
myMap f (x:xs) = (f x) : myMap f xs
