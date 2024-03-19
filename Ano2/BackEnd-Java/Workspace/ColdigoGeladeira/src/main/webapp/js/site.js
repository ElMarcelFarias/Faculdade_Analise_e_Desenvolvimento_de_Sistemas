
$(document).ready(function() {
    $("header").load("http://localhost:8080/ColdigoGeladeira/pages/site/general/cabecalho.html");
    $("nav").load("http://localhost:8080/ColdigoGeladeira/pages/site/general/menu.html");
    $("footer").load("http://localhost:8080/ColdigoGeladeira/pages/site/general/rodape.html");
})

function validaFaleConosco() {

    var nome = document.fmrfaleconosco.txtnome.value;
    var expRegNome = new RegExp("^[A-zÀ-ü]{3,}([ ]{1}[A-zÀ-ü]{2,})+$");

    if(!expRegNome.test(nome)){
        alert("Preencha o campo Nome corretamente.");
        document;fmrfaleconosco.txtnome.focus();
        return false 
    }

    var fone = document.fmrfaleconosco.txtfone.value;
    var expRegFone = new RegExp("^[(]{1}[1-9]{2}[)]{1}[0-9]{4,5}[-]{1}[0-9]{4}$")

    if(!expRegFone.test(fone)){
        alert("Preencha o campo telefone corretamente.");
        document.fmrfaleconosco.txtfone.focus();
        return false;
    }

    if((document.fmrfaleconosco.email.value == "")){
        alert('Preencha o campo email corretamente.')
        document.fmrfaleconosco.email.focus();
        return false;
    }

    if((document.fmrfaleconosco.motivo.value == "")){
        alert('Preencha o campo motivo corretamente.')
        document.fmrfaleconosco.motivo.focus();
        return false;
    }

    if((document.fmrfaleconosco.comentario.value == "")){
        alert('Preencha o campo comentario corretamente.')
        document.fmrfaleconosco.comentario.focus();
        return false;
    }

    if((document.fmrfaleconosco.opcaoProdutoComentario.value == "")){
        alert('Preencha o campo comentário do produto corretamente.')
        document.fmrfaleconosco.opcaoProdutoComentario.focus();
        return false;
    }

    
    return true;
}


function verificarMotivo(motivo) {
    const elemento = document.getElementById("opcaoProduto");
  
    if (motivo == "PR") {
      const select = document.createElement("select");
      select.setAttribute("name", "selproduto");
      select.setAttribute("id", "opcaoProdutoComentario");
  
      let option = document.createElement("option");
      option.setAttribute("value", "");
  
      let texto = document.createTextNode("Escolha");
      option.appendChild(texto);
      select.appendChild(option);
      option.setAttribute("value", "");

      let option1 = document.createElement("option");
      texto = document.createTextNode("Freezer");
      option1.appendChild(texto);
      select.appendChild(option1);
      option1.setAttribute("value", "FR");
  
      let option2 = document.createElement("option");
      option2.setAttribute("value", "GE");
  
      texto = document.createTextNode("Geladeira");
  
      option2.appendChild(texto);
      select.appendChild(option2);
      elemento.appendChild(select);

      

      
    } else {
      if (elemento.firstChild) {
        elemento.removeChild(elemento.firstChild);
      }
    }
  }