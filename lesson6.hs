isPalindrome word = word == reverse word

respond phrase = if '!' `elem` phrase
                 then "Ogo!"
                 else "Ny, ok"
