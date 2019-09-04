function valida(campo) {
  var rm = form.rm.value,
      senha = form.senha.value;

  if (campo == "rm") {
    if ((rm == "") || (form.rm.value.length < 5)) {
      form.rm.id = "error"
      form.rm.focus();
      return false;

    } else {
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
