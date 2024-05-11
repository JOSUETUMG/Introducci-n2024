/**
 * Crear algoritmo que devuelva número
 * menor y mayor que un array.
 */
let array = [2, 5, 7, 15, -5, -100, 55];

function getMenorMayor(arr) {
    let menor = arr[0];
    let mayor = arr[0];
    for (numero of arr) {
        menor = menor < numero ? menor : numero;
        mayor = mayor > numero ? mayor : numero
    }
    retur [menor,mayor];
}

let numero = getMenorMayor(array)
console.log(numero);