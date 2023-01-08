sumSquareOrSquareSum x y = if sumSquare > squareSum 
                           then sumSquare
                           else squareSum
  where  sumSquare = x^2 + y^2
         squareSum = (x+y)^2                   

doubleDouble x = dubs*2
 where dubs = x*2

doubleDoublev2 x = (\dubs -> dubs*2) (x*2)

sumv3 x y = let sumSquare = (x^2 + y^2)
                squareSum = (x+y)^2 
            in
             if sumSquare > squareSum
             then sumSquare
             else squareSum

overwrite x = let x = 2
              in let x = 3
               in let x = 4
                in x 
overwitrl x = (\x ->  
                (\x ->  
                  (\x -> x ) 4 ) 3 ) 2 

ovv x = (\x -> (\x -> (\x -> x) 4 ) 3 ) 2 

x = 4

add1 y = y + x

add2 y = (\x -> y + x) 3

add3 y = (\y ->
          (\x -> y + x) 1 ) 2
