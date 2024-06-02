// Esta función agrega el valor pasado como parámetro a la pantalla de la calculadora
function addToScreen(value) {
    // Obtiene el elemento de la pantalla de la calculadora por su ID y agrega el valor al final de su contenido actual
    document.getElementById('screen').value += value;
}

// Esta función limpia la pantalla de la calculadora
function clearScreen() {
    // Obtiene el elemento de la pantalla de la calculadora por su ID y establece su valor como una cadena vacía
    document.getElementById('screen').value = '';
}

// Esta función realiza el cálculo de la expresión matemática ingresada en la pantalla de la calculadora
function calculate() {
    // Obtiene el valor actual en la pantalla de la calculadora
    var screenValue = document.getElementById('screen').value;
    // Evalúa la expresión matemática y almacena el resultado en la variable 'result'
    var result = eval(screenValue);
    // Actualiza el valor de la pantalla de la calculadora con el resultado obtenido
    document.getElementById('screen').value = result;
}

