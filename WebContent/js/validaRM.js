function valida(campo) {
  var rm = form.rm.value;

  if (campo == "rm") {
    if ((rm == "") || (form.rm.value.length < 5)) {
      form.rm.id = "error"
      form.rm.focus();
      return false;

    } else {
      form.rm.id = "success"
    }
  }
}
