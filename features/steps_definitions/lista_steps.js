const { Before, Given, When, Then } = require('@cucumber/cucumber');
const expect = require("chai").expect;
const Lista = require("../../src/lista.js");

let contexto = {};
let vectorTmp = [];

Given('una lista vacía', function(){
    contexto.lista = new Lista();
});

Given('una lista con los siguientes elementos', function(vector){
    vector = vector.rawTable;
    contexto.lista = new Lista();
    vectorTmp.length = 0;
    for(var indice = 1; indice < vector.length; indice++) {
        contexto.lista.add(vector[indice][0], vector[indice][1]);
        vectorTmp.push(vector[indice][0]);
    }
});

When('agrego la clave {string} con el valor {}', function(clave,valor){
    contexto.lista.add(clave,valor);
    vectorTmp.push(clave);
    vectorTmp.sort();
});

When('agrego la clave {int} con el valor {}', function(clave,valor){
    contexto.lista.add(clave,valor);
});

When('elimino la clave {string}', function(clave){
    contexto.lista.remove(clave);
});

Then('la lista tiene {int} elemento(s) almacenado(s)', function(cantidad){
    expect(contexto.lista.count()).to.be.equal(cantidad);
});

Then('si busco la clave {string} no obtengo ningun valor', function(clave){
    expect(contexto.lista.find(clave)).to.be.NaN;
});

Then('si busco la clave {string} obtengo el valor {}',function(clave,valor){
    expect(contexto.lista.find(clave)).to.be.equal(valor);
})

Then('puedo obtener la lista ordenada', function(){
    expect(contexto.lista.getList()).to.be.deep.equal(vectorTmp);
})