-- Now we'll use GHCI to examine the types of some expressions. We'll do that by using the :t command which, followed by any valid expression, tells us its type. Let's give it a whirl.
:t 'a'  -- 'a' :: Char
:t True -- True :: Bool


-- Functions also have types. When writing our own functions, we can choose to give them an explicit type declaration. This is generally considered to be good practice except when writing very short functions. From here on, we'll give all the functions that we make type declarations. Remember the list comprehension we made previously that filters a string so that only caps remain? Here's how it looks like with a type declaration.

removeNonUppercase :: [Char] -> [Char]  
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
-- removeNonUppercase has a type of [Char] -> [Char], meaning that it maps from a string to a string. That's because it takes one string as a parameter and returns another as a result. The [Char] type is synonymous with String so it's clearer if we write removeNonUppercase :: String -> String


-- But how do we write out the type of a function that takes several parameters? Here's a simple function that takes three integers and adds them together:
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
