factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial(n-1)

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1+x2, y1+y2)

first :: (a,b,c) -> a
first (x,_,_) = x

second :: (a,b,c) -> b
second (_,y,_) = y

third :: (a,b,c) -> c
third (_,_,z) = z

--pattern matching in lists
--let xs = [(1,3),(4,3),(2,4)]
--[ a+b | (a,b) <- xs]

head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

tell [] = "This list is empty"
tell (x:[]) = "This list has only " ++ show x
tell (x:y:[]) = "This list has " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list has more than two elements"

firstLetter :: String -> String
firstLetter "" = "Empty string, whoops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

bmiTell :: Double -> String
bmiTell bmi
  | bmi <= 18.5 = "You're underweight"
  | bmi <= 25.0 = "You're supposedly normal"
  | bmi <= 30.0 = "You're fat!"
  | otherwise = "You're giant!"

bmiTell2 :: Double -> Double -> String
bmiTell2 weight height
  | weight/height ^ 2 <= 18.5 = "You're underweight"
  | weight/height ^ 2 <= 25.0 = "You're normal"
  | weight/height ^ 2 <= 30.0 = "You're fat"
  | otherwise = "You're giant"

max' a b 
  | a <= b = b
  | otherwise = a

myCompare a b
  | a == b = EQ
  | a <= b = LT
  | otherwise = GT

--using "where" to simplify calculation
bmiTell3 :: Double -> Double -> String
bmiTell3 weight height
  | bmi <= skinny = "You're underweight"
  | bmi <= normal = "You're normal"
  | bmi <= fat = "You're fat"
  | otherwise = "You're giant"
  where bmi = weight/height ^ 2
        skinny = 18.5
        normal = 25.0
        fat = 30.0

--note on scope: WHERE is not shared among function bodies if same function implemented multiple ways

  













