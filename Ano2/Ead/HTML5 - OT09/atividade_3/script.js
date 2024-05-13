//alguns trechos pegos da internet
const produtos = [
    { nome: 'Produto 1', imagem: 'https://via.placeholder.com/250', preco: 100.00, categoria: 'eletronicos' },
    { nome: 'Produto 2', imagem: 'https://via.placeholder.com/250', preco: 50.00, categoria: 'roupas' },
    { nome: 'Produto 3', imagem: 'https://via.placeholder.com/250', preco: 75.00, categoria: 'livros' },

];

const containerProdutos = document.getElementById('produtos');

function mostrarProdutos(produtos) {
    containerProdutos.innerHTML = '';
    produtos.forEach(produto => {
        const produtoHTML = `
            <div class="produto">
                <img src="${produto.imagem}" alt="${produto.nome}">
                <h2>${produto.nome}</h2>
                <div class="preco">R$ ${produto.preco.toFixed(2)}</div>
                <button class="botao-comprar">Comprar</button>
            </div>
        `;
        containerProdutos.innerHTML += produtoHTML;
    });
}

mostrarProdutos(produtos);

document.getElementById('filtro-categoria').addEventListener('change', function() {
    const categoriaSelecionada = this.value;
    if (categoriaSelecionada === 'todos') {
        mostrarProdutos(produtos);
    } else {
        const produtosFiltrados = produtos.filter(produto => produto.categoria === categoriaSelecionada);
        mostrarProdutos(produtosFiltrados);
    }
});

document.getElementById('ordenacao').addEventListener('change', function() {
    const opcaoSelecionada = this.value;
    let produtosOrdenados = [];
    switch (opcaoSelecionada) {
        case 'preco-asc':
            produtosOrdenados = produtos.slice().sort((a, b) => a.preco - b.preco);
            break;
        case 'preco-desc':
            produtosOrdenados = produtos.slice().sort((a, b) => b.preco - a.preco);
            break;
        default:
            produtosOrdenados = produtos;
    }
    mostrarProdutos(produtosOrdenados);
});