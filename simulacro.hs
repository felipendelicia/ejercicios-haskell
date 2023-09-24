verSiElementosDeRelacionSonIguales:: (String, String) -> Bool
verSiElementosDeRelacionSonIguales (a,b) = a == b

verSiDosRelacionesSonIguales :: (String, String) -> (String, String) -> Bool
verSiDosRelacionesSonIguales relacion1 relacion2 =
    relacion1 == relacion2 || relacion1 == (snd relacion2, fst relacion2)

verSiLaRelacionEstaRepetida:: (String, String) -> [(String, String)] -> Bool
verSiLaRelacionEstaRepetida relacion [] = False
verSiLaRelacionEstaRepetida relacion (x:xs) = (verSiDosRelacionesSonIguales relacion x) || (verSiLaRelacionEstaRepetida relacion xs)

relacionesValidas:: [(String, String)] -> Bool
relacionesValidas [] = True
relacionesValidas (x:xs) = (not ((verSiElementosDeRelacionSonIguales x) || (verSiLaRelacionEstaRepetida x xs))) && (relacionesValidas xs)

eliminarPersonasRepetidas:: [String] -> [String]
eliminarPersonasRepetidas personas
    | personas == [] = []
    | elem (head personas) (tail personas) = eliminarPersonasRepetidas (tail personas)
    | otherwise = [head personas] ++ eliminarPersonasRepetidas (tail personas)

enlistarTodasLasPersonasConRepetidos:: [(String,String)] -> [String]
enlistarTodasLasPersonasConRepetidos [] = []
enlistarTodasLasPersonasConRepetidos (x:xs) = [fst x] ++ [snd x] ++ (enlistarTodasLasPersonasConRepetidos xs)

personas::[(String,String)] -> [String]
personas relaciones = eliminarPersonasRepetidas (enlistarTodasLasPersonasConRepetidos relaciones)

amigosDe:: String -> [(String, String)] -> [String]
amigosDe persona relaciones
    | relaciones == [] = []
    | (fst (head relaciones)) == persona = [snd (head relaciones)] ++ (amigosDe persona (tail relaciones))
    | (snd (head relaciones)) == persona = [fst (head relaciones)] ++ (amigosDe persona (tail relaciones))
    | otherwise = amigosDe persona (tail relaciones)

cuantosAmigosTiene:: String -> [(String, String)] -> Int
cuantosAmigosTiene persona relaciones = length (amigosDe persona relaciones)

funcioncita:: [String] -> [(String, String)] -> String
funcioncita (x:xs) relaciones
    | (length xs) == 0 = x
    | ((cuantosAmigosTiene x relaciones) > (cuantosAmigosTiene (head xs) relaciones)) = funcioncita ([x]++(tail xs)) relaciones
    | ((cuantosAmigosTiene x relaciones) < (cuantosAmigosTiene (head xs) relaciones)) = funcioncita xs relaciones
    | otherwise = funcioncita xs relaciones

personaConMasAmigos:: [(String,String)]-> String
personaConMasAmigos relaciones = funcioncita (personas relaciones) relaciones