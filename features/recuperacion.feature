# language: es
# encoding: utf-8

Característica: Recuperar una lista ordenada con las claves

Esquema del escenario: Agregar elementos en distintas posiciones de la lista ordenada
    Dado una lista con los siguientes elementos
    | clave  | valor |
    | letras | abcde |
    | numero |   7   |
    Cuando agrego la clave "<clave>" con el valor <valor>
    Entonces la lista tiene 3 elementos almacenados
    Y puedo obtener la lista ordenada
    Ejemplos:
    | clave     | valor     |
    | zoologico | San Diego |
    | arbol     |   verde   |
    | moto      |   Honda   |