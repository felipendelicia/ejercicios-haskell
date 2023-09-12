-- funciones auxiliares
arrayContainsOtherArray:: Eq t => [t] -> [t] -> Bool
arrayContainsOtherArray firstArr secondArr
    | arrayLength firstArr == 0 = True
    | otherwise = (belongTheArray (head firstArr) secondArr) && (arrayContainsOtherArray (tail firstArr) secondArr)
    
-- ejercicio 1) 1
arrayLength:: [t] -> Int
arrayLength [] = 0
arrayLength arr = 1 + arrayLength (tail arr)

-- ejercicio 1) 2
lastArrayElement:: [t] -> t
lastArrayElement arr = arr!!(arrayLength arr - 1)

-- ejercicio 1) 3
removeLastArrayElement:: Eq t => [t] -> [t]
removeLastArrayElement arr = filter (\x -> not(x == lastArrayElement arr)) arr

-- ejercicio 1) 3 - A pedido del publico, con recursion!!!
removeLastArrayElementWithRecursion:: [t] -> [t]
removeLastArrayElementWithRecursion arr
    | arrayLength arr == 1 = []
    | otherwise = [arr!!0] ++ removeLastArrayElementWithRecursion (tail arr)

-- ejercicio 1) 4
reverseArray:: [t] -> [t]
reverseArray [] = []
reverseArray (h:t) = (reverseArray t) ++ [h]

-- ejercicio 2) 1
belongTheArray:: Eq t => t -> [t] -> Bool
belongTheArray element arr
    | arrayLength arr == 0 = False
    | otherwise = (element == (head arr)) || (belongTheArray element (tail arr))

-- ejercicio 2) 2
allEqual:: Eq t => [t] -> Bool
allEqual arr
    | arrayLength arr < 2 = True
    | otherwise = (arr!!0 == arr!!1) && allEqual (tail arr)

-- ejercicio 2) 3
allDiferent:: Eq t => [t] -> Bool
allDiferent arr
    | arrayLength arr < 2 = True
    | otherwise = (not (arr!!0 == arr!!1)) && allDiferent (tail arr)

-- ejercicio 2) 4
thereAreRepeatedElements:: Eq t => [t] -> Bool
thereAreRepeatedElements arr = not (allDiferent arr)

-- ejercicio 2) 5
deleteElement:: Eq t => t -> [t] -> [t]
deleteElement element arr
    | arrayLength arr == 0 = []
    | element == head arr = tail arr
    | otherwise = [head arr] ++ deleteElement element (tail arr)

-- ejercicio 2) 6
deleteAllElement:: Eq t => t -> [t] -> [t]
deleteAllElement element arr
    | arrayLength arr == 0 = []
    | element == head arr = deleteAllElement element (tail arr)
    | otherwise = [head arr] ++ deleteAllElement element (tail arr)

-- ejercicio 2) 7
deleteReapetedElements:: Eq t => [t] -> [t]
deleteReapetedElements arr
    | arrayLength arr == 0 = []
    | belongTheArray (head arr) (tail arr) = deleteReapetedElements (tail arr)
    | otherwise = [head arr] ++ deleteReapetedElements (tail arr)

-- ejercicio 2) 8
arraysAreEqual:: Eq t => [t] -> [t] -> Bool
arraysAreEqual firstArr secondArr = (arrayContainsOtherArray firstArr secondArr) && (arrayContainsOtherArray secondArr firstArr)

-- ejercicio 2) 9
isCapicua:: Eq t => [t] -> Bool
isCapicua arr = arr == reverseArray arr

-- ejercicio 3) 1
sumAll:: [Int] -> Int
sumAll [] = 0
sumAll (x:xs) = x + sumAll xs

-- ejercicio 3) 2
multiplyAll:: [Int] -> Int
multiplyAll [] = 1
multiplyAll (x:xs) = x * multiplyAll xs

-- ejercicio 3) 3
arrayMax:: [Int] -> Int
arrayMax arr
    | arrayLength arr == 1 = head arr
    | otherwise = max (head arr) (arrayMax (tail arr))

-- ejercicio 3) 4
sumForEachElement:: Int -> [Int] -> [Int]
sumForEachElement number [] = []
sumForEachElement number (x:xs) = [x + number] ++ (sumForEachElement number xs)

-- ejercicio 3) 5
sumForEachElementFirstIndex:: [Int] -> [Int]
sumForEachElementFirstIndex arr = sumForEachElement (head arr) arr

-- ejercicio 3) 6
sumForEachElementLastIndex:: [Int] -> [Int]
sumForEachElementLastIndex arr = sumForEachElement (lastArrayElement arr) arr

-- ejercicio 3) 7
removeInpairElements:: [Int] -> [Int]
removeInpairElements arr
    | arrayLength arr == 0 = []
    | ((head arr) `mod` 2) == 1 = removeInpairElements (tail arr)
    | otherwise = [head arr] ++ removeInpairElements (tail arr)

-- ejercicio 3) 8
removeNotMultiples:: Int -> [Int] -> [Int]
removeNotMultiples number arr
    | arrayLength arr == 0 = []
    | not(((head arr) `mod` number) == 0) = removeNotMultiples number (tail arr)
    | otherwise = [head arr] ++ removeNotMultiples number (tail arr)

-- ejercicio 3) 9
orderIncreasingly:: [Int] -> [Int]
orderIncreasingly [] = []
orderIncreasingly arr = orderIncreasingly (deleteElement (arrayMax arr) arr) ++ [arrayMax arr]

-- ejercicio 4) 1
removeContiguousSpaces:: [Char] -> [Char]
removeContiguousSpaces arr
    | arrayLength arr == 0 = []
    | (arr!!0 == ' ') && (arr!!1 == ' ') = removeContiguousSpaces (tail arr)
    | otherwise = [head arr] ++ removeContiguousSpaces (tail arr)

