// { id: 1, recuperarClave: function (){}}
function Usuario () {
    this.id = 1;
    this.resuperarClave = function () {
        console.log('recuperando clave...');
    }
}

let usuario =  new Usuario();

console.log(usuario);