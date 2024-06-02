const btnEstilo1 = document.getElementById('btnEstilo1');
const btnEstilo2 = document.getElementById('btnEstilo2');
const btnEstilo3 = document.getElementById('btnEstilo3');
const contenedor = document.getElementById('contenedor');
const text = document.querySelectorAll('p.text, h4.text, h2.text, label.nombre1, hr.line');

btnEstilo1.addEventListener('click', function(){
    document.body.style.backgroundColor = 'brown';
    document.body.style.backgroundImage = 'none';
    contenedor.style.backgroundColor = 'rgba(78,220,6,.9)';
    text.forEach(text => {text.style.color = 'black'});
})

btnEstilo2.addEventListener('click', function(){
    document.body.style.backgroundColor = 'green';
    document.body.style.backgroundImage = 'none';
    contenedor.style.backgroundColor = 'blue';
    text.forEach(text => {text.style.color = 'white'});
})

btnEstilo3.addEventListener('click', function(){
    document.body.style.backgroundImage = 'url("img/tecnologia\ 1.jpg")';
    contenedor.style.backgroundColor = 'rgba(0,0,0,.7)';
    text.forEach(text => {text.style.color = 'white'});
})
