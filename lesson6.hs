isPalindrome word = word == reverse word

respond phrase = if '!' `elem` phrase
                 then "Ogo!"
                 else "Ny, ok"

takeLast n aList = reverse( take n (reverse aList) )

ones n = take n (cycle [1])

assingToGroups n aList = zip groups aList
    where groups = cycle [ 1..n ]
