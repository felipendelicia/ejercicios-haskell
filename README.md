# Haskell

Ejercicios de haskell realizador para la materia "Algoritmos y estructuras de datos I" (UBA)

Para ejecutar las funciones, ejecutar la siguiente linea en el directorio del repositorio:

    ghci app.hs

### Guia 3: Intro

<table>
    <thead>
        <tr>
            <th>Nombre</th>
            <th>Descripcion</th>
            <th>Entrada</th>
            <th>Salida</th>
        </tr>
    </thead>
    <tbody>
        <tr>
           <td>f</td>
           <td>Ejemplo de funcion partida</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>g</td>
           <td>Otro ejemplo de funcion partida</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>fog</td>
           <td>Composicion de funciones anteriores</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>gof</td>
           <td>Composicion de funciones anteriores</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>absAlternative</td>
           <td>Valor absoluto de un numero</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>maxAbsoluteNumber</td>
           <td>El maximo del valor absoluto de dos numeros</td>
           <td>Int, Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>maxOfThree</td>
           <td>Devuelve el maximo entre tre numeros</td>
           <td>Int, Int, Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>isZero</td>
           <td>Devuelte True si uno de sus parametros es cero</td>
           <td>Int, Int</td>
           <td>Bool</td>
        </tr>
        <tr>
           <td>areZero</td>
           <td>Devuelte True si sus parametros son cero</td>
           <td>Int, Int</td>
           <td>Bool</td>
        </tr>
        <tr>
           <td>areSameInterval</td>
           <td>Devuelve True si pertenecen al mismo intervalo (−∞, 3], (3, 7] o (7, ∞)</td>
           <td>Int, Int</td>
           <td>Bool</td>
        </tr>
        <tr>
           <td>deleteArrayDuplicates</td>
           <td>Elimina los duplicados de un array</td>
           <td>[a]</td>
           <td>[a]</td>
        </tr>
        <tr>
           <td>sumOfThree</td>
           <td>Hace la suma de tres numeros, omitiendo las repeticiones</td>
           <td>Int, Int, Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>areMultiples</td>
           <td>Verifica que dos numeros sean o no mutiplos</td>
           <td>Int, Int</td>
           <td>Bool</td>
        </tr>
        <tr>
           <td>unitsDigit</td>
           <td>Devuelve el digito de las unidades</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>tensDigit</td>
           <td>Devuelve el digito de las decenas</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>isInt</td>
           <td>Devuelve true si el valor ingresado es un entero</td>
           <td>Float</td>
           <td>Bool</td>
        </tr>
        <tr>
           <td>quadraticFunctionRootWithoutCParam</td>
           <td>Devuelve la raiz diferente de 0 de una funcion cuadratica sin parametro C</td>
           <td>Float, Float</td>
           <td>Float</td>
        </tr>
        <tr>
           <td>hasIntegerRootDiferentZero</td>
           <td>Verifica si una cuadratica sin parametro C tiene una raiz distinta de 0</td>
           <td>Float, Float</td>
           <td>Bool</td>
        </tr>
        <tr>
           <td>isPair</td>
           <td>Devuelve true si es par</td>
           <td>Int</td>
           <td>Bool</td>
        </tr>
        <tr>
           <td>g2</td>
           <td>Ejemplo de funcion partida</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>f2</td>
           <td>Ejemplo de funcion partida</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>allMinor</td>
           <td>Verifica que para tres valores dados, la imagen de g2 es menor que la de f2</td>
           <td>(Int, Int, Int)</td>
           <td>Bool</td>
        </tr>
        <tr>
           <td>isLeapYear</td>
           <td>Verifica si dado un año es bisiesto</td>
           <td>Int</td>
           <td>Bool</td>
        </tr>
        <tr>
           <td>internProduct</td>
           <td>Devuelve el producto interno de dos vectores en RxR</td>
           <td>(Float, Float), (Float, Float)</td>
           <td>Float</td>
        </tr>
        <tr>
           <td>allCordsMinor</td>
           <td>Devuelve true cuando todos los valores de la primera tupla son menores a los de la segunda</td>
           <td>(Float, Float), (Float, Float)</td>
           <td>Bool</td>
        </tr>
        <tr>
           <td>vectorSubstract</td>
           <td>Devuelve la resta entre dos vectores de R2</td>
           <td>(Float, Float), (Float, Float)</td>
           <td>(Float, Float)</td>
        </tr>
        <tr>
           <td>pythagoras</td>
           <td>Devuelve la hipotenusa dada la distancia de ambos catetos -- analogo a la norma de un vector dadas sus componentes x e y</td>
           <td>(Float, Float)</td>
           <td>Float</td>
        </tr>
        <tr>
           <td>pointsDistance</td>
           <td>Devuelve la distancia entre dos puntos de R2</td>
           <td>(Float, Float), (Float, Float)</td>
           <td>Float</td>
        </tr>
        <tr>
           <td>tripletSum</td>
           <td>Devuelve la suma de una terna de numeros</td>
           <td>(Int, Int, Int)</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>sumOnlyMultiples</td>
           <td>Devuelve la suma de los elementos de la tupla multiplos de un numero natural</td>
           <td>(Int, Int, Int), Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>posFirstEven</td>
           <td>Devuelve la posicion del primer elemento de la tupla par</td>
           <td>(Int, Int, Int)</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>createPair</td>
           <td>Devuelve una tupla a partir de los dos valores dados</td>
           <td>a, b</td>
           <td>(a, b)</td>
        </tr>
        <tr>
           <td>invert</td>
           <td>Devuelve una tupla invertida</td>
           <td>(a, b)</td>
           <td>(b, a)</td>
        </tr>
        <tr>
           <td>distanceManhattan</td>
           <td>Devuelve la sumatoria de la resta de los valores absolutos de cada elemento de la tupla</td>
           <td>(Float, Float, Float), (Float, Float, Float)</td>
           <td>Float</td>
        </tr>
        <tr>
           <td>sumLastTwoDigits</td>
           <td>Devuelve la suma de los ultimos dos digitos</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>compareNumbers</td>
           <td>Devuelve 0, 1 o -1 segun la suma de los dos ultimos digitos de a y b</td>
           <td>Int, Int</td>
           <td>Int</td>
        </tr>
    </tbody>
</table>

### Guia 4: Recursion

<table>
    <thead>
        <tr>
            <th>Nombre</th>
            <th>Descripcion</th>
            <th>Entrada</th>
            <th>Salida</th>
        </tr>
    </thead>
    <tbody>
        <tr>
           <td>lastDigit</td>
           <td>Devuelve el ultimo digito de un numero (unidades)</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>quitLastDigit</td>
           <td>Quita el ultimo digito de un numero</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>digitsLength</td>
           <td>Devuelve la cantidad de digitos de un numero</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>fibonacchi</td>
           <td>Dado un numero devuelve el numero en esa posicion de la sucesion de fibonacci</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>entirePart</td>
           <td>Devuelve la parte entera de un numero</td>
           <td>Float</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>inpairSum</td>
           <td>Devuelve la suma de la sucesion de numeros impares de la cantidad de elementos que se ingrese</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>midFactorial</td>
           <td>Devuelve el factorial de un numero alternado de dos en dos (n * (n-2)!)</td>
           <td>Int</td>
           <td>Int</td>
        </tr>
        <tr>
           <td>allDigitsEqual</td>
           <td>Devuelve true si todos los digitos de un numero son iguales</td>
           <td>Int</td>
           <td>Bool</td>
        </tr>
        <tr>
           <td>indexDigit</td>
           <td>Te devuelve el digito en el indice especificado (empezando por el 1)</td>
           <td>Int, Int</td>
           <td>Int</td>
        </tr>
    </tbody>
</table>
