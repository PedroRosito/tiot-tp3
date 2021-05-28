# language: es
# encoding: utf-8

Característica: Buscar valores a partir de sus claves

Escenario: Buscar un elemento en una lista con datos
    Dado una lista con los siguientes elementos
    | clave  | valor |
    | letras | abcde |
    | numero |   7   |
    Entonces la lista tiene 2 elementos almacenados
    Y si busco la clave "letras" obtengo el valor abcde
    Y si busco la clave "numero" obtengo el valor 7