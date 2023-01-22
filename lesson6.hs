isPalindrome word = word == reverse word

respond phrase = if '!' `elem` phrase
                 then "Ogo!"
                 else "Ny, ok"

takeLast n aList = reverse( take n (reverse aList) )

ones n = take n (cycle [1])

assingToGroups n aList = zip groups aList
    where groups = cycle [ 1..n ]

-- HW 6.1

myRepeat n = take 1 aList
  where aList = cycle [n]

-- HW 6.2

subseq start stop vxList = take diff dList
  where diff = stop - start
        dList = drop start vxList

dlinaSp vxList = length vxList

inFirstHalf val vxList = elem val firstHalf
   where midpoint = (length vxList) `div` 2
         firstHalf = take midpoint vxList
