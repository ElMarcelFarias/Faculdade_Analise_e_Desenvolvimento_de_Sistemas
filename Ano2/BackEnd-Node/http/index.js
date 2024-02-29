import express from 'express';

const app = express();

app.listen(3001, () => 
    console.log('Servidor iniciado na porta 3001')
);

app.get('/', (req, res) => 
    res.send('<h1 style="color: blue;"> CRIANDO UM SERVIDOR COM EXPRESS.JS</h1>')
);

app.get('/sobre', (req, res) =>     
    res.send('<h1 style="color: blue;">PÁGINA SOBRE</h1>')
);   

app.get('/contato', (req, res) => 
    res.send('<h1 style="color: blue;">PÁGINA CONTATO</h1>')    
);