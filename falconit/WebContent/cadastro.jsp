<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@include file="bootstrap.jsp" %>
<link rel="stylesheet" href="css/cadastro.css">
<link rel="stylesheet" type="text/css" href="css/formulario.css" />
<link rel="shortcut icon" href="img/favicon.ico" />

<title>Curso de Nivelamento</title>

</head>
<body>
	<%@include file="navlinkDeslogado.jsp" %>
	<%@include file="bannerPrincipal.jsp" %>
	<div class="container">
		<div class="row">
			<div class="col">
				<!-- FORM DE CADASTRO  -->
				<form name="form" action="controller" method="post">
					<div class="form-row">


						<div class="form-group col-md-6">
							<label for="inputAddress">Nome</label> <input
								class="form-control" placeholder="Nome" name="nome"
								id="form_name" required autofocus onblur="valida('nome');">
						</div>

						<div class="form-group col-md-6">
							<label for="inputAddress">Sobrenome</label> <input
								class="form-control" placeholder="Sobrenome" name="sobrenome"
								id="form_name" required onblur="valida('sobrenome');">
						</div>

						<div class="form-group col-md-6">
							<label>CPF/CNPJ</label> <input id="cpfOuCnpj" required
								name="cpf" type="text" onblur="valida('cpfOuCnpj');" placeholder="Digite seu CPF/CNPJ" class="form-control">
						</div>


						<div class="form-group col-md-6">
							<label for="inputEmail4">Email</label> <input
								class="form-control" id="inputEmail4" name="email"
								placeholder="Ex: email@dominio.com.br" required
								onblur="valida('email'); ">
						</div>

						<div class="form-group col-md-6">
							<label for="inputPassword4">Senha</label> <input
								class="form-control" placeholder="Senha" name="senha" id="senha"
								required onblur="valida('senha');" type="password">

						</div>


						<div class="form-group col-md-6">
							<label>Celular</label> <input type="text" class="form-control"
								placeholder="(DD) 9 9999-9999" id="telefone" required
								name="telefone" maxlength="11" onblur="valida('celular');" />
						</div>

						<div class="form-group col-md-6">
							<label>CEP</label> <input id="cep" placeholder="Digite seu CEP"
								required name="cep" class="form-control" class="mb-3"
								pattern="\d*" maxlength="9" type="text" onblur="valida('cep');"  />
						</div>

						<div class="form-group col-md-6">
							<label>Logradouro</label> <input id="logradouro" type="text" name="logr" placeholder="Ex: Alameda Rio Negro"
								class="form-control" onblur="valida('logradouro');"/>
						</div>
						

						<div class="form-group col-md-6">
							<label>Nº</label> <input id="numero" type="text" required
								name="n" class="form-control" placeholder="123" onblur="valida('numero')" />
						</div>

						<div class="form-group col-md-6">
							<label>Bairro</label> <input id="bairro" type="text"
								name="bairro" class="form-control" onblur="valida('bairro');" placeholder="Digite seu bairro"/>
						</div>

						<div class="form-group col-md-6">
							<label>Cidade</label> <input id="cidade" type="text"
								name="cidade" class="form-control" onblur="valida('cidade');" placeholder="Digite sua cidade"/>
						</div>

						<div class="form-group col-md-6">
							<label>UF</label> <input id="uf" type="text" name="uf"
								class="form-control" onblur="valida('uf');" placeholder="UF"/>
						</div>


						<div class="form-group col-md-3">
							<button id="btn" class="btn btn-primary" name="tarefa"
								value="Cadastrar">Cadastrar</button>

						</div>

					</div>

				</form>
			</div>
		</div>
	</div>

	<!------------------------------------------------------------------------------------------------------------------------------------------------------->

	<footer>
		<p>Falcon IT &copy 2019 Todos os direitos reservados</p>
	</footer>
	
	
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
		
	<script type="text/javascript" src="js/validaCampo.js"></script>
	<script type="text/javascript" src="js/cep.js"></script>
	<script type="text/javascript" src="js/masks.js"></script>
	
</body>
</html>