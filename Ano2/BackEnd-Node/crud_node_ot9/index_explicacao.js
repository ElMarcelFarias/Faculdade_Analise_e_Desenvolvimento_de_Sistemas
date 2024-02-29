import express from 'express';

const app = express();

app.get('/', (req, res) => 
    res.send("<h3>Rotas no Express</h3><p>Rota '/'")
);

app.listen(3000, () => 
    console.log('Servidor iniciado na porta 3000')
);

app.get('/sobre/:nome', (req, res) => 
    res.send("Bem vindo: "+req.params.nome)
);

//buscando o valor de um array 
var carros = ['fiest', 'saveiro'];
app.use(express.urlencoded({ extended: true }));

app.get('/cars/:id', (req, res) => {
    let id = req.params.id;
    res.json([carros[id]]);
})

app.post('/cars/', (req, res) => {
    let name = req.body.name;
    carros[(carros.length)] = name;
    return res.json([carros[(carros.length - 1)]]); 
});

app.put('/cars/update/:id', (req, res) => {
    let name = req.body.name;
    carros[req.params.id] = name;
    return res.json(carros[req.params.id]);
})

app.delete('/cars/delete/:id', (res, req) => {
    let id = req.params.id;
    carros[id] = null;
    return res.json(carros[id]);
})