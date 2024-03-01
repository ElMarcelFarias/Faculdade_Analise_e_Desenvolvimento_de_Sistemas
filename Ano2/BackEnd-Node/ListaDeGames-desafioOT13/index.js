//carregando o express
const express = require('express');

//instanciando o express e carregando a biblioteca do express dentro dessa const app
const app = express();

let games = [
    {id: 1, title: "Sea of Thieves", studio: "Rare", price: 30},
    {id: 2, title: "WOW", studio: "Blizzard", price: 120},
    {id: 3, title: "Valorant", studio: "Riot", price: 50},
    {id: 4, title: "COD", studio: "Activision", price: 78},
    {id: 5, title: "Minecraft", studio: "Microsoft", price: 200},
    {id: 6, title: "League of Legends", studio: "Riot", price: 42},
    {id: 7, title: "Apex Legends", studio: "Riot", price: 98},
    {id: 8, title: "Fortnite", studio: "Fortnite", price: 123},
]

const buscarGamePorNome = (nomeGame) => {
    return games.filter(game => game.title.toLocaleLowerCase().includes(nomeGame.toLocaleLowerCase()));
}

app.listen(3000, (req, res) => {
    console.log('Servidor rodando!')
})
app.get('/', (req, res) => {

    const nomeGame = req.query.busca;
    const resultado = nomeGame ? buscarGamePorNome(nomeGame) : games;

    if(resultado.length > 0) {
        res.json(resultado);
    } else {
        res.status(404).send({ "error": "Nenhum jogo encontrado!" });
    }

    res.json(games)
});

app.use(express.json());

app.post("/novogame", (req, res) => {
    //precisamos capturar as informações para o post
    let title = req.body.title;
    let studio = req.body.studio;
    let price = req.body.price;

    console.log(title);
    console.log(studio);
    console.log(price);

    let newGame = { title: title, studio: studio, price: price };
    games.push(newGame);

    res.send("OK");

});

app.get('/game/:idgame', (req, res) => {
    const idgame = parseInt(req.params.idgame);
    let mensagemErro = '';
    let game;

    if(!(isNaN(idgame))){
        game = games.find(u => u.id === idgame);

        if(!game){
            mensagemErro = 'Game nao encontrado!';
        }
    } else {
        mensagemErro = 'Requisicao inválida!';
    }

    if(game) {
        res.json(game);
    } else {
        res.status(404).send({ "erro": mensagemErro });
    }

})

//edicao de um jogo 

app.put('/novogame/:index', (req, res) => {
    const { index } = req.params;
    let title = req.body.title;
    let studio = req.body.studio;
    let price = req.body.price;

    games[index] = { title: title, studio: studio, price: price};
    return res.json(games);
})

app.delete('/deletargame/:index', (req, res) => {
    const { index } = req.params;
    games.splice(index, 1);
    return res.json({message: "O Jogo foi deletado com sucesso!"});
})




