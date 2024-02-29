var fs = require('fs');

fs.unlink('renamed.txt', (err) => {
    if (err) throw err;
    console.log('Arquivo removido com sucesso!')
})