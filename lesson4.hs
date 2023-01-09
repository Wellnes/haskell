import Data.List

ifEvenInc n = if even n
              then n + 1
              else n

ifEven myFunction x = if even x
                      then myFunction x
                      else x

inc n = n + 1

double n = n * 2

square n = n ^ 2

names = [ ("Ian","Curtis"),("Bernard","Sumner"),("Peter","Hook"),("Stephen","Morris") ]

compareLastNames name1 name2 = if lastName1 > lastName2
                               then GT
                               else if lastName1 < lastName2 
                                    then LT
                                    else if firstName1 > firstName2
                                         then GT
                                         else if firstName1 < firstName2
                                              then LT
                                              else EQ
  where lastName1 = snd name1
        lastName2 = snd name2
        firstName1 = fst name1
        firstName2 = fst name2

smatrfoo n = if 3 < 4
             then 45
	     else
  where lastname = 23 sdsa = dsd
