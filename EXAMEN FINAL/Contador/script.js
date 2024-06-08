const contadorElemento = document.getElementById('contador');
const incrementarBtn = document.getElementById('incrementarBtn');
const disminuirBtn = document.getElementById('disminuirBtn');

let contador = 0;

function incrementarContador() {
    contador++;
    actualizarContador();
}

function disminuirContador() {
    contador--;
    actualizarContador();
}

function actualizarContador() {
    contadorElemento.textContent = contador;
}

incrementarBtn.addEventListener('click', incrementarContador);
disminuirBtn.addEventListener('click', disminuirContador);