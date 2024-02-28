function validaInscricoes() {

    let nome = document.fmrinscricoes.Inscricao_Nome.value;
    const expRegNome = new RegExp("^[A-zÀ-ü]{3,}([ ]{1}[A-zÀ-ü]{2,})+$");

    if (!expRegNome.test(nome)) {
        alert("Preencha o campo Nome corretamente");
        document.fmrinscricoes.Inscricao_Nome .focus();
        return false;
    }


    if((document.fmrinscricoes.Inscricao_DataNascimento.value == "")){
        alert('Preencha o campo data de nascimento corretamente.')
        document.fmrinscricoes.Inscricao_DataNascimento.focus();
        return false;
    }

    let email = document.fmrinscricoes.Inscricao_Email.value;
    const expRegEmail = new RegExp("([a-z]+).(@[a-z]+.).");

    if (expRegEmail.test(email)) {
        alert("Preencha o campo email");
        document.fmrinscricoes.Inscricao_Email.focus();
        return false;
    }


    if((document.fmrinscricoes.Inscricao_Telefone.value == "")){
        alert('Preencha o campo telefone corretamente.')
        document.fmrinscricoes.Inscricao_Telefone.focus();
        return false;
    }
    return true;
}

//
function verificarBotao() {
    if(document.getElementById('Inscricao_Sim').checked) {
        document.getElementById("botaoSubmit").style.display = "inline-flex";
    } else {
        document.getElementById("botaoSubmit").style.display = "none";
    }
}