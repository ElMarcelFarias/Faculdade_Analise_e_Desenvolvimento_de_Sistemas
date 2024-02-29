import e from 'express';
import express from 'express';
import colecaoUf from './dados/dados.js';
const app = express();

const buscarUfsPorNome = (nomeUf) => {
    return colecaoUf.filter(uf => uf.nome.toLocaleLowerCase().includes(nomeUf.toLocaleLowerCase()));
}

app.get('/ufs', (req, res) => {
    res.json(colecaoUf);
    const nomeUf = req.query.busca;
    const resultado = nomeUf ? buscarUfsPorNome(nomeUf) : colecaoUf;
    if(resultado.length > 0 ){
        res.json(resultado);
    } else {
        res.status(404).send({ "erro": "Nenhuma NF encontrada"})
    }
})

app.listen(8000, () => {
    console.log('Server rodando na porta 8000')
});

app.get('/ufs/:iduf', (req, res) => {
    const iduf = parseInt(req.params.iduf);
    let mensagemErro = "";
    let uf;
    
    if(!(isNaN(iduf))){
        uf = colecaoUf.find(u => u.id == iduf);

        if(!uf) {
            mensagemErro = 'UF nao encontrada!';
        } 

    } else {
        mensagemErro = 'Requisicao inválida';
    }
    if(uf) {
        res.json(uf);
    } else {
        res.status(404).send({"erro": mensagemErro});
    }

})

