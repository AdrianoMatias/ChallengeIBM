function valida(campo) {
	var nome = form.nome.value, 
	sobrenome = form.sobrenome.value, 
	rm = form.rm.value, 
	senha = form.senha.value,
	email = form.email.value,
	cpfOuCnpj = form.cpfOuCnpj.value,
	telefone = form.telefone.value,
	cep = form.cep.value,
	num = form.n.value,
	cidade = form.cidade.value,
	logr = form.logradouro.value,
	bairro = form.bairro.value,
	uf = form.uf.value;
	
	if(campo == 'cidade'){
		if(cidade.length == 0){
			form.cidade.style.border = "2px solid red";
		}else {
			form.cidade.style.border = "2px solid green";
		}
	}
	
	if(campo == 'uf'){
		if(uf.length == 0){
			form.uf.style.border = "2px solid red";
		}else {
			form.uf.style.border = "2px solid green";
		}
	}
	
	if(campo == 'bairro'){
		if(bairro.length == 0){
			form.bairro.style.border = "2px solid red";
		}else {
			form.bairro.style.border =  "2px solid green";
		}
	}
	
	if(campo == 'logradouro'){
		if(logr.length == 0){
			form.logr.style.border = "2px solid red";
		}else {
			form.logr.style.border = "2px solid green";
		}
	}
	
	
	if(campo == 'cep'){
		if(cep.length != 8){
			form.cep.style.border =  "2px solid red";
		} else {
			form.cep.style.border = "2px solid green";
		}
			
	}
	if(campo == 'numero'){
		if(num.length == 0){
			form.n.style.border = "2px solid red";
		}else {
			form.n.style.border = "2px solid green";
		}
	}
	
	if (campo == 'celular'){
		if(telefone.length != 16){
			form.telefone.style.border = "2px solid red";
		} else {
			form.telefone.style.border = "2px solid green";
			
		}
	}
	
	if (campo == "cpfOuCnpj"){
		if(cpfOuCnpj.length < 11 || cpfOuCnpj.length > 14){
			form.cpfOuCnpj.style.border = "2px solid red";
		}else{
			form.cpfOuCnpj.style.border = "2px solid green";
		}
	}
	if (campo == "email"){
		
	
	usuario = email.substring(0, email.indexOf("@"));
	dominio = email.substring(email.indexOf("@") + 1,
			email.length);

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
	
	if (campo == "nome") {
		if ((nome == "") || (form.nome.value.length < 3)) {

			form.nome.style.border = "2px solid red";
			return false;

		} else {
			form.nome.style.border = "2px solid green";
		}
	}

	if (campo == "sobrenome") {
		if ((sobrenome == "") || (form.sobrenome.value.length < 3)) {

			form.sobrenome.style.border = "2px solid red";	
			return false;

		} else {
			form.sobrenome.style.border = "2px solid green";
		}
	}
	
	if (campo == "rm") {
		if ((rm == "") || (form.rm.value.length < 5)) {
			form.rm.style.border = "2px solid red";
		} else {
			form.rm.style.border = "2px solid green";
		}
	}

	if (campo == "senha") {
		if (senha == "") {
			form.senha.style.border = "2px solid red";

		} else {
			form.senha.style.border = "2px solid green";
		}
	}
};

// Validação de email


