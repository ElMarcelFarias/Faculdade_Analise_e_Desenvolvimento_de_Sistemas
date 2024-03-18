const express = require('express');
const path = require('path');
const app = express();

app.engine('html', require('ejs').renderFile);
app.set('view engine', 'html');
app.use('/public', express.static(path.join(__dirname, 'public')));
app.set('views', path.join(__dirname, '/views'));


app.use( express.json());
app.use( express.urlencoded({
    extended: true
}));


let tasks = ['Marce', 'Uchoa'];

app.get('/', (req, res) => {
    res.render('index',{tasksList: tasks});
});

app.post('/', (req,res) => {
    tasks.push(req.body.tasks);
    res.render('index', {tasksList: tasks});
})

app.listen(8000, () => {
    console.log('Servidor rodando em http://localhost:8000');
})

app.get('/deletar/:id', (req, res) => {
    tasks = tasks.filter(function(val, index) {
        if(index != req.params.id) {
            return val;
        }
    })
    res.redirect('/');
    res.render('index', {tasksList: tasks})
    
})

