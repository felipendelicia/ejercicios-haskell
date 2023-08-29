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

-- Para hacerlo diferente...
absAlternative:: Int -> Int
absAlternative number
    | number >= 0 = number
    | number < 0 = (-1) * number

maxAbsoluteNumber:: Int -> Int -> Int
maxAbsoluteNumber a b = max (absAlternative a) (absAlternative b)

maxOfThree:: Int -> Int -> Int -> Int
maxOfThree a b c = max (max a b) c

isZero:: Float -> Float -> Bool
isZero a b = (a == 0) || (b == 0)

areZero:: Float -> Float -> Bool
areZero a b = (a == 0) && (b == 0)

--  (−∞, 3], (3, 7] y (7, ∞)
areSameInterval:: Float -> Float -> Bool
areSameInterval a b
    | (a <= 3) && (b <= 3) = True
    | (a > 3 && a <= 7) && (b > 3 && b <= 7) = True
    | (a > 7) && (b > 7) = True
    | otherwise = False

deleteArrayDuplicates :: (Eq a) => [a] -> [a]
deleteArrayDuplicates [] = []
deleteArrayDuplicates (x:xs) = x : deleteArrayDuplicates (filter (/= x) xs)

sumOfThree :: Int -> Int -> Int -> Int
sumOfThree a b c = sum (deleteArrayDuplicates [a, b, c])

areMultiples:: Int -> Int -> Bool
areMultiples a b = (a `mod` b == 0) || (b `mod` a == 0)

unitsDigit:: Int -> Int
unitsDigit number = number `mod` 10
