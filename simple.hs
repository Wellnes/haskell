simple x = x 

--calcChange owed given = if change > 0
--                       then change
--                        else 0
--   where change = given - owed

calcChange owed given = max change 0
   where change = given - owed

doublePlusTwo x = doubleX + 2
  where doubleX = x * 2

inc vxChislo = vxChislo + 1

double vxChislo = vxChislo * 2

square n = n ^ 2

--calcIfChet n = if n `mod` 2 == 0
--               then n - 2
--               else 3 * n + 1

calcEven n = if even n
             then n - 2
             else 3 * n + 1 