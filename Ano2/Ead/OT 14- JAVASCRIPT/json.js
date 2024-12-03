const usuario = {
    nome: "Marcel",
    idade: 30,
    profissao: "Desenvolvedor",
    endereco: {
        cidade: "Jonville",
        estado: "SC"
    }
};

const jsonString = JSON.stringify(usuario);
console.log(jsonString);