counter x = (\x ->
              (\x -> x + 1)  x + 1 ) x

co2 x = (\x -> x + 1)
        ( (\x -> x + 1) 
        ( (\x -> x) x ) )

