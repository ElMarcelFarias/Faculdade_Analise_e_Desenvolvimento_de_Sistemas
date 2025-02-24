function verifyCredentials() {
    const username = document.getElementById('nomeUsuario').value.trim();
    const password = document.getElementById('senha').value.trim();
    const confirmPassword = document.getElementById('confirmarSenha').value.trim();

    if (!username || !password || !confirmPassword) {
        Swal.fire({
            title: 'Erro',
            html: 'Por favor, preencha todos os campos!',
            icon: 'warning'
        });
        return;
    }

    if (password !== confirmPassword) {
        Swal.fire({
            title: 'Erro',
            html: 'As senhas não coincidem!',
            icon: 'error'
        });
        return;
    }

    let users = JSON.parse(localStorage.getItem('users')) || [];

    const userExists = users.some(user => user.username === username);

    if (userExists) {
        Swal.fire({
            title: 'Erro',
            html: 'Este nome de usuário já está em uso!',
            icon: 'error'
        });
        return;
    }
    
    let newId = 1;
    if (users.length > 0) {
        newId = Math.max(...users.map(user => user.id || 0)) + 1;
    }

    users.push({ id: newId, username, password, is_logged: 0 });

    localStorage.setItem('users', JSON.stringify(users));

    Swal.fire({
        title: 'Sucesso!',
        html: 'Cadastro realizado com sucesso!',
        icon: 'success',
        timer: 2000,
        showConfirmButton: false
    });

    // Redireciona após o sucesso
    setTimeout(() => {
        window.location.href = 'login.html';
    }, 2500);
}
