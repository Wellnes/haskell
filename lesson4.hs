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

compareAllNames name1 name2 = 
    if result == EQ
    then compare (fst name1) (fst name2)
    else result
  where result = compare (snd name1) (snd name2)

--addressLeter name location = nameText ++ " - " ++ location
--  where nameText = (fst name) ++ " " ++ (snd name)

sfOffice name = 
    if lastName < "L"
    then nameText ++ " - " ++ "P.O. box 1234" ++ officePartName ++ "94111" 
    else nameText ++ " - " ++ "P.O. box 1010" ++ officePartName ++ "94109" 
  where lastName = snd name
        nameText = (fst name) ++ " " ++ lastName
        officePartName = " San Francisco, California State, "

nyOffice name = nameText ++ ": " ++ "P.O. box 789, New York, State of New York, 10013"
  where nameText = (fst name) ++ " " ++ (snd name)

renoOffice name = nameText ++ " - " ++ "P.O. box 456, Reno, State of Nevada, 89523"
  where nameText = snd name

waOffice name = "Dear " ++ nameText ++ " - " ++ "P.O. box 315, Washington, Columbia region, 256"
  where nameText = (fst name) ++ " " ++ (snd name)

getLocationFunction location = 
  case location of
    "ny" -> nyOffice
    "sf" -> sfOffice
    "reno" -> renoOffice
    "wa" -> waOffice
    _ -> (\name -> (fst name) ++ " " ++ (snd name))

addressLetter name location = locationFunction name
  where locationFunction = getLocationFunction location

araDress name location = getLocationFunction location name

compareFullNames name1 name2 = compare fullName1 fullName2
  where fullName1 = (fst name1) ++ (snd name1)
        fullName2 = (fst name2) ++ (snd name2)
