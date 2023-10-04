-- funciones auxiliares
deleteArrayDuplicates :: (Eq a) => [a] -> [a]
deleteArrayDuplicates [] = []
deleteArrayDuplicates (x:xs) = x : deleteArrayDuplicates (filter (/= x) xs)

isInt:: Float -> Bool
isInt x = x == fromInteger (round x)

quadraticFunctionRootWithoutCParam:: Float -> Float -> Float
quadraticFunctionRootWithoutCParam a b = (-a) / b

vectorSubtract :: (Float, Float) -> (Float, Float) -> (Float, Float)
vectorSubtract (x1, y1) (x2, y2) = (x1 - x2, y1 - y2)

pythagoras :: (Float, Float) -> Float
pythagoras (x, y) = sqrt (x^2 + y^2)

sumLastTwoDigits :: Integer -> Integer
sumLastTwoDigits x = (x `mod` 10) + ((x `div` 10) `mod` 10)

-- ejercicio 1
f:: Int -> Int
f 1 = 8
f 4 = 131
f 16 = 16

g:: Int -> Int
g 8 = 16
g 16 = 4
g 131 = 1

fog:: Int -> Int
fog n = f (g n)

gof:: Int -> Int
gof n = g (f n)

-- ejercicio 2 A)
absAlternative:: Int -> Int
absAlternative number
    | number >= 0 = number
    | number < 0 = (-1) * number


-- ejercicio 2 B)
maxAbsoluteNumber:: Int -> Int -> Int
maxAbsoluteNumber a b = max (absAlternative a) (absAlternative b)

-- ejercicio 2 C)
maxOfThree:: Int -> Int -> Int -> Int
maxOfThree a b c = max (max a b) c

-- ejercicio 2 D)
isZero:: Float -> Float -> Bool
isZero a b = (a == 0) || (b == 0)

-- ejercicio 2 E)
areZero:: Float -> Float -> Bool
areZero a b = (a == 0) && (b == 0)

-- ejercicio 2 F)
--  (−∞, 3], (3, 7] y (7, ∞)
areSameInterval:: Float -> Float -> Bool
areSameInterval a b
    | (a <= 3) && (b <= 3) = True
    | (a > 3 && a <= 7) && (b > 3 && b <= 7) = True
    | (a > 7) && (b > 7) = True
    | otherwise = False

-- ejercicio 2 G)
sumOfThree :: Int -> Int -> Int -> Int
sumOfThree a b c = sum (deleteArrayDuplicates [a, b, c])

-- ejercicio 2 H)
areMultiples:: Int -> Int -> Bool
areMultiples a b = (a `mod` b == 0) || (b `mod` a == 0)

-- ejercicio 2 I)
unitsDigit:: Int -> Int
unitsDigit number = number `mod` 10

-- ejercicio 2 J)
tensDigit:: Int -> Int
tensDigit number = ((number `mod` 100) - unitsDigit number) `div` 10

-- ejercicio 3
hasIntegerRootDiferentZero:: Float -> Float -> Bool
hasIntegerRootDiferentZero a b = isInt (quadraticFunctionRootWithoutCParam a b)

-- ejercicio 4 A)
internProduct :: (Float, Float) -> (Float, Float) -> Float
internProduct (x1, y1) (x2, y2) = x1 * x2 + y1 * y2

-- ejercicio 4 B)
allCoordsMinor :: (Float, Float) -> (Float, Float) -> Bool
allCoordsMinor (x1, y1) (x2, y2) = x1 < x2 && y1 < y2

-- ejercicio 4 C)
pointsDistance :: (Float, Float) -> (Float, Float) -> Float
pointsDistance point1 point2 = pythagoras (vectorSubtract point1 point2)

-- ejercicio 4 D)
tripletSum :: (Int, Int, Int) -> Int
tripletSum (x, y, z) = x + y + z

-- ejercicio 4 E)
sumOnlyMultiples :: (Int, Int, Int) -> Int -> Int
sumOnlyMultiples (a, b, c) natural =
  let sumIfMultiple x accumulator = if areMultiples x natural then x + accumulator else accumulator
  in sumIfMultiple a (sumIfMultiple b (sumIfMultiple c 0))

-- ejercicio 4 F)
posFirstEven :: (Int, Int, Int) -> Int
posFirstEven (a, b, c)
  | even a = 1
  | even b = 2
  | even c = 3
  | otherwise = 4

-- ejercicio 4 G)
createPair :: a -> b -> (a, b)
createPair x y = (x, y)

-- ejercicio 4 H)
invert :: (a, b) -> (b, a)
invert (x, y) = (y, x)

-- ejercicio 5
isPair:: Int -> Bool
isPair number = number `mod` 2 == 0

g2:: Int -> Int
g2 number 
    | isPair number = number `div` 2
    | not (isPair number) = 3*number + 1

f2:: Int -> Int
f2 number
    | number <= 7 = number * number
    | otherwise = 2*number - 1

allMinor:: (Int, Int, Int) -> Bool
allMinor (x, y, z) = (f2 x > g2 x ) && (f2 y > g2 x ) && (f2 z > g2 z)

-- ejercicio 6
isLeapYear:: Int -> Bool
isLeapYear year = (year `mod` 4 == 0) || (year `mod` 400 == 0)

-- ejercicio 7
distanceManhattan :: (Float, Float, Float) -> (Float, Float, Float) -> Float
distanceManhattan (x1, y1, z1) (x2, y2, z2) = abs (x1 - x2) + abs (y1 - y2) + abs (z1 - z2)

-- ejercicio 8
compareNumbers :: Integer -> Integer -> Integer
compareNumbers a b
  | sumLastTwoDigits a < sumLastTwoDigits b = -1
  | sumLastTwoDigits a > sumLastTwoDigits b = 1
  | otherwise = 0