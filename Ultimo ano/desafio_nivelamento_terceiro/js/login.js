(function() {
    var users = JSON.parse(localStorage.getItem('users')) || [];
    var loggedUser = users.find(function(user) {
        return user.is_logged === 1;
    });
   
    if (loggedUser) {
        window.location.href = '../index.html';
        return;
    }

})();

function verifyCredentials() {
    const username = document.getElementById('nomeUsuario').value.trim();
    const password = document.getElementById('senha').value.trim();

    if (!username || !password) {
        Swal.fire({
            title: 'Erro',
            html: 'Por favor, preencha todos os campos!',
            icon: 'warning'
        });
        return;
    }

    if (username === "admin" && password === "1234") {
        Swal.fire({
            title: 'Login realizado com sucesso!',
            html: '<small><b>Redirecionando...</b></small>',
            icon: 'success',
            timer: 2000,
            showConfirmButton: false
        });
        setTimeout(() => {
            window.location.href = 'index.html';
        }, 2500);
        return;
    }

    let users = JSON.parse(localStorage.getItem('users')) || [];

    const userFound = users.find(user => user.username === username && user.password === password);

    if (userFound) {

        const index = users.findIndex(user => user.id === userFound.id);

        if (users[index].is_logged == 1) {
            window.location.href = '../index.html';
        }
        if (index !== -1) {
            users[index].is_logged = 1;
        }

        localStorage.setItem('users', JSON.stringify(users));

        Swal.fire({
            title: 'Login realizado com sucesso!',
            html: '<small><b>Redirecionando...</b></small>',
            icon: 'success',
            timer: 2000,
            showConfirmButton: false
        });
        setTimeout(() => {
            window.location.href = '../index.html';
        }, 2500);
    } else {
        Swal.fire({
            title: 'Erro',
            html: 'Usuário ou senha incorretos! <br>Por favor, tente novamente.',
            icon: 'error'
        });
    }
}
