let livros = new Map();
livros.set('Harry potter', 'DJ Roling');
livros.set('Diário de Anny frenk', 'Anny frenk');
livros.set('Diário de um Banan', 'Marcel Leite de Farias');

console.log(livros.get('2003')); // George Orwell

for (let [titulo, autor] of livros) {
    console.log(titulo + " - " + autor);
}

console.log(livros.size); 
livros.delete('Harry potter');
console.log(livros.has('Harry potter')); 

let colecao = new Map();
colecao.set('chave', 'valor');
colecao.set(123, 'valor');
colecao.set({id: 1}, 'valor');
