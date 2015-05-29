[1..20] -- integer ranges
['a'..'z'] -- string ranges
['K'..'Z'] -- with capital letters

-- STEPS
[1,3..100] -- printing out every odd number from 1 up to 100
[20,19..1] -- inverse step

-- Get the first 24 multiples of 13.
[13,26..24*13]
-- OR
take 24 [13,26..]


-- CYCLE
-- takes a list and cycles it into an infinite list. If you just try to display the result, it will go on forever so you have to slice it off somewhere.
 take 10 (cycle [1,2,3])


-- Repeat takes an element and produces an infinite list of just that element. It's like cycling a list with only one element.
take 10 (repeat 5)

-- Although it's simpler to just use the "replicate" function if you want some number of the same element in a list.
replicate 3 10 -- returns [10,10,10]
