//carregando o express
const express = require('express');

//instanciando o express e carregando a biblioteca do express dentro dessa const app
const app = express();

let games = [
    {title: "Sea of Thieves", studio: "Rare", price: 30},
    {title: "WOW", studio: "Blizzard", price: 120},
    {title: "Valorant", studio: "Riot", price: 50},
    {title: "COD", studio: "Activision", price: 78},
    {title: "Minecraft", studio: "Microsoft", price: 200},
    {title: "League of Legends", studio: "Riot", price: 42},
    {title: "Apex Legends", studio: "Riot", price: 98},
    {title: "Fortnite", studio: "Fortnite", price: 123},
]

app.listen(3000, (req, res) => {
    console.log('Servidor rodando!')
})
app.get('/', (req, res) => 
    res.json(games)
);

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





