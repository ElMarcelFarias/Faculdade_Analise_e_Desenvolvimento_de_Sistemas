function validaInscricoes() {
    if(document.fmrinscricoes.Inscricao_Nome.value == ""){
        alert('Preencha o campo Nome.')
        document.fmrinscricoes.Inscricao_Nome .focus();
        return false;
    }

    if((document.fmrinscricoes.Inscricao_DataNascimento.value == "")){
        alert('Preencha o campo data de nascimento corretamente.')
        document.fmrinscricoes.Inscricao_DataNascimento.focus();
        return false;
    }

    if((document.fmrinscricoes.Inscricao_Email.value == "")){
        alert('Preencha o campo e-mail corretamente.')
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