-- funciones auxiliares
lastDigit:: Int -> Int
lastDigit number = number `mod` 10

quitLastDigit:: Int -> Int
quitLastDigit number = number `div` 10

digitsLength:: Int -> Int
digitsLength number
    | number < 10 = 1
    | otherwise = 1 + digitsLength(number `div` 10)

-- ejercicio 1
fibonacchi:: Int -> Int
fibonacchi 0 = 0
fibonacchi 1 = 1
fibonacchi n = fibonacchi(n - 2) + fibonacchi(n - 1)

-- ejercicio 2
entirePart:: Float -> Int
entirePart number
    | number < 0 = entirePart(number + 1) - 1
    | number < 1 = 0
    | otherwise = 1 + entirePart (number - 1)

-- ejercicio 4
inpairSum:: Int -> Int
inpairSum 0 = 0
inpairSum number = (2*number - 1) + inpairSum(number - 1) 

-- ejercicio 5
midFactorial:: Int -> Int
midFactorial 0 = 1
midFactorial 1 = 1
midFactorial n = n * midFactorial(n - 2)

-- ejercicio 7
allDigitsEqual:: Int -> Bool
allDigitsEqual number
    | number < 10 = True
    | otherwise = lastDigit number == lastDigit(quitLastDigit number) && allDigitsEqual(quitLastDigit number)

-- ejercicio 8
indexDigit:: Int -> Int -> Int
indexDigit number index = lastDigit(number `div` 10^(digitsLength number - index - 1))


