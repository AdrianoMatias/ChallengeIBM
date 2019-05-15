function valida(campo) {
  var nome = form.nome.value,
    email = form.email.value,
    rm = form.rm.value,
    senha = form.senha.value;

  if (campo == "nome") {
    if (nome == "") {
      form.nome.id = "error"
      form.nome.focus();
      return false;

    } else {
      form.nome.id = "success"
    }
  }
  if (campo == "email") {
    if (email == "") {
      form.email.id = "error"
      form.email.focus();
      return false;

    } else {
      form.email.id = "success"
    }
  }

  if (campo == "rm"){
      if((rm == "") || (form.rm.value.length < 5)) {
        form.rm.id = "error"
        form.rm.focus();
        return false;
      }else{
        form.rm.id = "success"
      }
    }


  if (campo == "senha") {
    if (senha == "") {
      form.senha.id = "error"
      form.senha.focus();
      return false;

    } else {
      form.senha.id = "success"
    }
  }
};

  // Validação de email

  function validacaoEmail(field) {
    usuario = field.value.substring(0, field.value.indexOf("@"));
    dominio = field.value.substring(field.value.indexOf("@") + 1, field.value.length);

    if ( (usuario.length >= 1) &&
        (dominio.length >= 3) &&
        (usuario.search("@") == -1) &&
        (dominio.search("@") == -1) &&
        (usuario.search(" ") == -1) &&
        (dominio.search(" ") == -1) &&
        (dominio.search(".") != -1) &&
        (dominio.indexOf(".") >= 1) &&
        (dominio.lastIndexOf(".") < dominio.length - 1) ) {

    } else {
      form.email.id = "error"
      form.email.focus();
    }
  };
