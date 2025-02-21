function verifyCredentials() {

    // Obtém os valores dos inputs
    const username = document.getElementById('nomeUsuario').value.trim();
    const password = document.getElementById('senha').value.trim();
    const confirmPassword = document.getElementById('confirmarSenha').value.trim();

    // Verifica se todos os campos foram preenchidos
    if (!username || !password || !confirmPassword) {
        Swal.fire({
            title: 'Erro',
            html: 'Por favor, preencha todos os campos!',
            icon: 'warning'
        });
        return;
    }

    // Valida se as senhas coincidem
    if (password !== confirmPassword) {
        Swal.fire({
            title: 'Erro',
            html: 'As senhas não coincidem!',
            icon: 'error'
        });
        return;
    }

    // Verifica se o usuário já existe no localStorage
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

    // Adiciona o novo usuário ao array
    users.push({ username, password });

    // Salva o array atualizado no localStorage
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