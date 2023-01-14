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

add4 a b c d = a + b + c + d

addXto3 x = (\b c d -> add4 x b c d)

genApiIdBuilder  =  getRequestUrl "http://example.com" 
                                  "1337hAsk3ll"
                                   "book" 

gen2ApiIdBuilder = (\id -> getRequestUrl "http://example.com"
                                         "1337hAsk3ll"
                                         "book"
                                         id)
