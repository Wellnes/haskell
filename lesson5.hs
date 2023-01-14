genIfEvenM x = (\f -> if even x
                    then f x
                    else x)

ifEven f x = if even x
             then f x
             else x

genIfEvenX x = (\f -> ifEven f x)

getRequestUrl host apiKey resourse id = 
  host ++ "/" ++ resourse ++ "/" ++ id ++ "?token=" ++ apiKey

genHostRequestBuilder host = (\apiKey resourse id -> 
                               getRequestUrl host apiKey resourse id)

exampleUrlBuilder = genHostRequestBuilder "http://example.com"

genApiRequestBuilder hostBuilder apiKey = 
              (\resourse id -> hostBuilder apiKey resourse id)

myExampleUrlBuilder = genApiRequestBuilder exampleUrlBuilder "1337hAsk3ll"

genResourseApiRequestBuilder hostBuilder apiKey resourse =
     (\id -> hostBuilder apiKey resourse id)

rExampleUrlBuilder = genResourseApiRequestBuilder exampleUrlBuilder "1337hAsk3ll" "book"
