import { iniciarSesionGoogle, 
        GuardarVotacion 
} from "./firebase-connect.js";

let dialogCrearVotacion = document.getElementById('dialogCrearVotacion');
let dialogIniciarSesion = document.getElementById('dialogIniciarSesion');
let dialogVerVotaciones = document.getElementById('dialogVotaciones');

document.onclick = function(event){
    if (event.target.id ==="dialogCrearVotacion"){
        dialogCrearVotacion.close();
    }
    if (event.target.id ==="dialogVotaciones"){
        dialogVerVotaciones.close();
    }
}

//Esto se va a ejecutar cada vez que se abra el documento.
document.addEventListener("DOMContentLoaded", function(){
  //dialogIniciarSesion.showModal();
})

document.getElementById('btnAbrirVentanaCrear').onclick = function(event){
    //Evitamos que se recargue la pagina.
    event.preventDefault();
    dialogCrearVotacion.showModal();
}

function dibujarVotaciones(datos){
    const tableVotaciones = document.getElementById('table-votaciones');
    //Limpiar tbody
    tableVotaciones.querySelector('tbody').innerHTML = '';
    for (const key in votaciones) {
        const votacion = votaciones[key];
        const tr = document.createElement('tr');
        tr.innerHTML = `
        <tr>${key}</tr>
        <tr>${votacion.nombre}</tr>
        <tr>${votacion.opcion1}</tr>
        <tr>${votacion.opcion2}</tr>
        `;
        tableVotaciones.querySelector('tbody').appendChild(tr);
    }
}

document.getElementById('btnVerVotaciones').onclick = function(event){
    event.preventDefault();
    dialogVerVotaciones.showModal();
    recuperarVotaciones(dibujarVotaciones);
}

document.getElementById('btnIniciarSesion').onclick =async function(event){
    event.preventDefault();
    let usuario = await iniciarSesionGoogle();
    if (usuario.email){
        //La autenticacion fue correcta
        sessionStorage.setItem('usuario', usuario.email);
        dialogIniciarSesion.close();
    }
}
document.getElementById('btnCrearVotacion').onclick =async function(event){
    event.preventDefault();
    let idVotacion = GuardarVotacion({
        nombre: document.getElementById('txtNombre').value,
        opcion1: document.getElementById('txtOpcion1').value,
        opcion2: document.getElementById('txtOpcion2').value,
    })
    alert(idVotacion)
}

