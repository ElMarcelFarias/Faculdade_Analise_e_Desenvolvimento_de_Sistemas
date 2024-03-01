import colecaoUf from './dados/dados.js';

export const buscarUfs = () => {
    return colecaoUf;
}

const buscarUfsPorNome = (nomeUf) => {
    return colecaoUf.filter(uf => uf.nome.toLocaleLowerCase().includes(nomeUf.toLocaleLowerCase()));
}

const buscarUfPorId = (id) => {
    const idUF = parseInt(id);
    return colecaoUf.find(u => u.id == idUF);
}