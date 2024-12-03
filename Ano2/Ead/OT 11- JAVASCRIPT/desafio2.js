let usuario = {
    nome: "Marcel",
    email: "marcel@gmail.com"
};

let usuarioAtualizado = {
    ...usuario,
    status: "ativo"
};

console.log(usuarioAtualizado);
