function valida(campo) {
  var rm = form.rm.value,
      senha = form.senha.value;

  if (campo == "rm") {
    if (rm.length < 5) {
      form.rm.style.border = "2px solid red";

    } else {
      form.rm.style.border = "2px solid green";
    }
  }

  if (campo == "senha") {
    if (senha.length > 20 || senha.length < 4 ) {
      form.senha.style.border = "2px solid red";

    } else {
      form.senha.style.border = "2px solid green";
    }
  }
};
