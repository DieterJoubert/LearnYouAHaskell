doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = 
  if x > 100
    then x
    else x*2

doubleSmallNumber' x =
  (if x > 100 then x else x*2) + 1

-- "string" !! index
-- [1,2,3] !! index

-- x ++ [a,b,c]

{-  list comparison: compares in sorted order
    tail [5,4,3,2,1] = [4,3,2,1]
    head [5,4,3,2,1] = 5
    last [5,4,3,2,1] = 1
    init [5,4,3,2,1] = [5,4,3,2]
    length [3,2,1] = 3
    null [1,2,3] = False
    reverse [3,2,1] = [1,2,3]
    take 3 [1,2,3,4,5] = [1,2,3]
    drop 3 [1,2,3,4,5] = [4,5]
    maximum [1,2,3,4,5] = 5
    minimum [1,2,3,4,5] = 1
    sum []
    product []
    4 'elem' [1,2,3,4,5] = True

    [1..5] = [1,2,3,4,5]
    ['a'..'z']
    [2,4..20] = [2,4,6,8,10...

    take 24 [13,26..]
        take first 24 of infinite list
    cycle [1,2,3] = //infinite list of [1,2,3,1,2,3,1]
    take  (repeat 5) = [5,5,5]
    replicate 3 10 = [10,10,10]
-}

{-

-}





