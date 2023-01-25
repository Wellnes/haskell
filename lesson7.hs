--sayAmount n = case n of
--    1 -> "one"
--    2 -> "two"
--    n -> "many"

sayAmount 1 = "one"
sayAmount 2 = "two"
sayAmount n = "many"

isEmpty [] = True
isEmpty _ = False

myHead (x:xs) = x
myHead [] = error "No head..."

myTail [] = []
myTail (_:xs) = xs

myGCD1 a b = if remainder == 0
             then b
             else myGCD1 b remainder
  where remainder = a `mod` b

myGCD2 a 0 = a
myGCD2 a b = myGCD2 b remainder
  where remainder = a `mod` b
