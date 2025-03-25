var usuariosArray = [];

function adicionarUsuario() {
    var nome = document.getElementById("nomeUsuario").value;
    var email = document.getElementById("emailUsuario").value;

    if (nome === "" || email === "") {
        alert("Preencha todos os campos!");
        return;
    }

    var usuario = { nome: nome, email: email };
    usuariosArray.push(usuario);

    atualizarListaUsuarios();

    document.getElementById("nomeUsuario").value = "";
    document.getElementById("emailUsuario").value = "";
}

function removeUser(email) {
    for (var i = 0; i < usuariosArray.length; i++) {
        if (usuariosArray[i].email === email) {
            usuariosArray.splice(i, 1);
            break;
        }
    }
    atualizarListaUsuarios();
}

function atualizarListaUsuarios() {
    var lista = document.getElementById("listausers");
    lista.innerHTML = "";
    for (var i = 0; i < usuariosArray.length; i++) {
        var li = document.createElement("li");
        li.innerHTML = usuariosArray[i].nome + " - " + usuariosArray[i].email +
            " <button onclick='removeUser(\"" + usuariosArray[i].email + "\")'>Remover</button>";
        lista.appendChild(li);
    }
}

function exibirUsuarios() {
    for (var i = 0; i < usuariosArray.length; i++) {
        console.log("Usuário: " + usuariosArray[i].nome + " - Email: " + usuariosArray[i].email);
    }
}

function enviaProBack() {
    console.log("Enviado para o back, o resto os dev fazem!");
}

document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("myForm");

    if (form) {
        form.addEventListener("submit", function (event) {
            event.preventDefault();
            const name = document.getElementById("name").value;
            const email = document.getElementById("email").value;

            console.log("Nome: " + name);
            console.log("Email: " + email);
            alert("Formulário interceptado! Não quero enviar pro back.");
        });
    }

    const navigateBtn = document.getElementById("navigateBtn");
    if (navigateBtn) {
        navigateBtn.addEventListener("click", function () {
            window.location.href = "pages/contato.html";
        });
    }
});

function goTo($location) {
  window.location.href = $location;
}
