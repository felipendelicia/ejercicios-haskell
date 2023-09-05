-- funciones auxiliares
deleteArrayDuplicates :: (Eq a) => [a] -> [a]
deleteArrayDuplicates [] = []
deleteArrayDuplicates (x:xs) = x : deleteArrayDuplicates (filter (/= x) xs)

isInt:: Float -> Bool
isInt x = x == fromInteger (round x)

quadraticFunctionRootWithoutCParam:: Float -> Float -> Float
quadraticFunctionRootWithoutCParam a b = (-a) / b

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