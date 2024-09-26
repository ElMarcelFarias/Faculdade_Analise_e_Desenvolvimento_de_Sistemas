let carro = {
    marca: 'Saveiro',
    modelo: 'Gol',
    ano: 2020
};
console.log(carro.modelo);

carro.cor = 'Azul';
carro.ano = 2025;
console.log(carro);

let calculadora = {
    soma: function(a, b) {
        return a + b;
    }
};
console.log(calculadora.soma(5, 3));

for (let propriedade in carro) {
    console.log(propriedade + ": " + carro[propriedade]);
}

let livro = {
    titulo: 'Guerra dos tronos',
    autor: 'George R. R. Martin'
};
let outroLivro = livro;
outroLivro.titulo = 'Diário de um banana';
console.log(livro.titulo);

console.log(Object.keys(carro));
console.log(Object.values(carro));
