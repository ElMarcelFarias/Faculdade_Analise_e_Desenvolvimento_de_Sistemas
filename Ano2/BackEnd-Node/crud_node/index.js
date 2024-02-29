import express from 'express';

const app = express();
app.use(express.json());


let cars = [
    {nome: "Saveiro Cross", marca: "Volks", preco: 72000},
    {nome: "Civic G6", marca: "Honda", preco: 44000},
    {nome: "Edge", marca: "Ford", preco: 70000},
    {nome: "Mobi", marca: "Fiat", preco: 47000},
    {nome: "Toro", marca: "Fiat", preco: 89000},
    {nome: "C180", marca: "Mercedez-bens", preco: 140000}
]

app.get('/', (req, res) => 
    res.send("<h3>Atividade</h3><p>Rota '/'")
);

app.listen(3000, () => 
    console.log('Servidor iniciado na porta 3000')
);

//buscando o valor de um array 
//app.use(express.urlencoded({ extended: true }));

app.get('/cars', (req, res) => {
    res.json(cars)
})

app.post('/newcar', (req, res) => {
    let nome = req.body.nome;
    let marca = req.body.marca;
    let preco = req.body.preco;

    let newCar = { nome: nome, marca: marca, preco: preco };
    cars.push(newCar);
    res.send("OK");

});

app.put('/cars/update/:index', (req, res) => {
    const { index } = req.params;
    let nome = req.body.nome;
    let marca = req.body.marca;
    let preco = req.body.preco;

    cars[index] = { nome: nome, marca: marca, preco: preco};
    return res.json(cars);
})

app.delete('/delete/:index', (req, res) => {
    const { index } = req.params;
    cars.splice(index, 1);
    return res.json({message: "O carro foi deletado com sucesso!"});
})