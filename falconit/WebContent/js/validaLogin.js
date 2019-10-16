function valida(campo) {
	var email = form.email.value, senha = form.senha.value;

	if (campo == "email") {

		usuario = email.substring(0, email.indexOf("@"));
		dominio = email.substring(email.indexOf("@") + 1, email.length);

		if ((usuario.length >= 1) && (dominio.length >= 3)
				&& (usuario.search("@") == -1) && (dominio.search("@") == -1)
				&& (usuario.search(" ") == -1) && (dominio.search(" ") == -1)
				&& (dominio.search(".") != -1) && (dominio.indexOf(".") >= 1)
				&& (dominio.lastIndexOf(".") < dominio.length - 1)) {
			form.email.style.border = "2px solid green";
		} else {
			form.email.style.border = "2px solid red";
		}
	}
	if (campo == "senha") {
		if (senha.length > 20 || senha.length < 4) {
			form.senha.style.border = "2px solid red";

		} else {
			form.senha.style.border = "2px solid green";
		}
	}
};
