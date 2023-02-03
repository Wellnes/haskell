addBang [] = []
addBang (x:xs) = (x ++ "!") : addBang xs

squareAll [] = []
squareAll (x:xs) = x^2 : squareAll xs

myMap f [] = []
myMap f (x:xs) = (f x) : myMap f xs

myFilter test [] = []
myFilter test (x:xs) = if test x
                       then x:myFilter test xs
                       else myFilter test xs

myRemove test [] = []
myRemove test (x:xs) = if test x
                       then myRemove test xs
                       else x:myRemove test xs 

concatAll xs = foldl (++) "" xs

myProduct xs = foldl (*) 1 xs

sumOfSquares xs = foldl (+) 0 (map (^2) xs)

rcons xs y = y:xs
myReverse xs = foldl rcons [] xs
