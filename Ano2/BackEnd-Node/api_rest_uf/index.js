import express from 'express';
import { buscarUfs, buscarUfsPorNome, buscarUfPorId } from './servicos/servicos.js';
const app = express();



app.get('/ufs', (req, res) => {
    
    const nomeUf = req.query.busca;
    const resultado = nomeUf ? buscarUfsPorNome(nomeUf) : buscarUfs();
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
    const uf = buscarUfPorId(req.params.iduf);
    
    if(uf){
        res.json(uf)
    } else if (isNaN(parseInt(req.params.iduf))) {
        res.status(400).send({ "erro": "Requisicao Inválida!" });
    } else {
        res.status(404).send({ "erro": "UF nao encontrada!" });
    }

});

