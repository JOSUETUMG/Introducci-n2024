/**
 * crear algotitmo que tome un array de 
 * objetos y devuelva un array de pares
 */
let pares = [
    [1, { name: "Nicolas"}],
    [2, { name: "Felipe"}],
    [3, { name: "Chanchito"}],
];

let array = [{
    id: 1,
    name: 'Nicolas',
}, {
    id: 2,
    name: 'Felipe',
}, {
    id: 3,
    name: 'Chanchito',
}];


function toColletion(arr) {
    let collection = []
    for (idx in arr) {
        let elemento = arr [idx];
        collection[idx] = elemento[1];
        collection[idx].id = elemento[0];
    }
    return collection;
}

let resultado = toColleccion(pairs);
console.log(resultado);