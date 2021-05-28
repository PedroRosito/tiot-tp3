# language: es
# encoding: utf-8

Característica: Gestionar las parejas almacenadas en la lista

Antecedentes: 
    Dado una lista vacía

Escenario: Verificar el estado de una lista vacía
    Entonces la lista tiene 0 elementos almacenados
    Y si busco la clave "clave" no obtengo ningun valor

Escenario: Agregar un elemento a una lista vacía
    Cuando agrego la clave "clave" con el valor "valor"
    Entonces la lista tiene 1 elemento almacenado
    Y si busco la clave "clave" obtengo el valor "valor"
    
Esquema del escenario: Agregar datos a una lista vacía
    Cuando agrego la clave "<clave>" con el valor <valor>
    Entonces la lista tiene 1 elemento almacenado
    Y si busco la clave "<clave>" obtengo el valor <valor>
    Ejemplos:
    | clave  | valor |
    | letras | abcde |
    | numero |   7   |

Escenario: Modificar un elemento en una lista con datos
    Dado una lista con los siguientes elementos
    | clave  | valor |
    | letras | abcde |
    | numero |   7   |
    Cuando agrego la clave "letras" con el valor "xyz"
    Entonces la lista tiene 2 elementos almacenados
    Y si busco la clave "letras" obtengo el valor "xyz" 

Escenario: Eliminar un elemento de una lista con datos a partir de su clave
    Dado una lista con los siguientes elementos
    | clave  | valor |
    | letras | abcde |
    Cuando elimino la clave "letras"
    Entonces la lista tiene 0 elementos almacenados

Escenario: Al agregar un elemento a una lista su clave es una string
    Cuando agrego la clave "letras" con el valor "xyz"
    Cuando agrego la clave 10 con el valor "uvw"
    Entonces la lista tiene 1 elemento almacenado

