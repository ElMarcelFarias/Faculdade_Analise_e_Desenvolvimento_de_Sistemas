var fs = require('fs');

fs.rename('novo.txt', 'renamed.txt', (err) => {
    if (err) throw err;
    console.log('Arquivo renomeado!')
})

