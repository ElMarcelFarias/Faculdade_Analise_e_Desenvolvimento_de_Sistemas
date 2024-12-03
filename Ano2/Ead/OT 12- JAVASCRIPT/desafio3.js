function apresentarUsuario({ nome, idade }) {
    return `Meu nome é ${nome} e tenho ${idade} anos.`;
}

let usuario = { nome: "Marcel", idade: 30 };
console.log(apresentarUsuario(usuario));
