-- We'll stick to getting the first 10 even numbers for now. The list comprehension we could use is [x*2 | x <- [1..10]]. x is drawn from [1..10] and for every element in [1..10] (which we have bound to x), we get that element, only doubled. Here's that comprehension in action.

[x*2 | x <- [1..10]] -- [2,4,6,8,10,12,14,16,18,20]

-- with predicates
-- Let's say we want only the elements which, doubled, are greater than or equal to 12.
[x*2 | x <- [1..10], x*2 >= 12]  -- [12,14,16,18,20]

-- How about if we wanted all numbers from 50 to 100 whose remainder when divided with the number 7 is 3?
[ x | x <- [50..100], x `mod` 7 == 3] -- [52,59,66,73,80,87,94]

--  Let's say we want a comprehension that replaces each odd number greater than 10 with "BANG!" and each odd number that's less than 10 with "BOOM!". If a number isn't odd, we throw it out of our list. For convenience, we'll put that comprehension inside a function so we can easily reuse it.
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]


-- We can include several predicates. If we wanted all numbers from 10 to 20 that are not 13, 15 or 19, we'd do:
[ x | x <- [10..20], x /= 13, x /= 15, x /= 19] -- [10,11,12,14,16,17,18,20] 
