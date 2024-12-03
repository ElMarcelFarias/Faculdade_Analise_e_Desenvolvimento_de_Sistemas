type Produto = [string, number];

function imprimirProduto(produto: Produto): void {
    console.log(`Produto: ${produto[0]}, Preço: R$${produto[1].toFixed(2)}`);
}

const meuProduto: Produto = ["Notebook", 2500.99];
imprimirProduto(meuProduto); // Produto: Notebook, Preço: R$2500.99
