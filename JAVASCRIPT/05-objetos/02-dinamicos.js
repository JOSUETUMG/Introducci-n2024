const user = { id: 1};

user.name = 'Josue';
user.guardar = function () {
    console.log('Guardado', user.name);
}

user.guardar ();

delete user.name;
delete user.guardar;
console.log(user);

// const user1 = Object.freeze({id: 1});
const user1 = Object.seal({id: 1});
user.name = 'Josue';
console.log(user1);
