myLength [] = 0
--myLength xs = 1 + myLength( tail xs )
myLength (_:xs) = 1 + myLength xs 
