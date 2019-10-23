<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@include file="bootstrap.jsp" %>
<link rel="stylesheet" href="css/cadastro.css">
<link rel="stylesheet" type="text/css" href="css/formulario.css" />
<link rel="shortcut icon" href="img/favicon.ico" />

<title>Curso de Nivelamento</title>

</head>
<body>
	<!--Menu -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index.jsp"><img class="logo"
			src="img/Falcon IT-01.png"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link" href="index.jsp">Matemática</a> <a
					class="nav-item nav-link" href="index.jsp">Português</a> <a
					class="nav-item nav-link" href="index.jsp">Lógica de
					Programação</a>
			</div>
		</div>
	</nav>

	<!--------------------------------------------------------------------------------------------------------->
	<!-- Banner Principal  -->

	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/mat 01.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/ABC 02.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/Log 02.jpg" class="d-block w-100" alt="...">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<!---------------------------------------------------------------------------------------------------------------------------------------->
	<!-- Seção Principal -->

	<div class="container">
		<div class="row">
			<div class="col">
				<!-- FORM DE CADASTRO  -->
				<h3>Dados digitados inválidos, tente novamente</h3>
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
								id="form_name" required autofocus onblur="valida('sobrenome');">
						</div>

						<div class="form-group col-md-6">
							<label>CPF/CNPJ</label> <input id="cpfOuCnpj" required
								name=cpf type="text" placeholder="Digite seu CPF/CNPJ" class="form-control">
						</div>


						<div class="form-group col-md-6">
							<label for="inputEmail4">Email</label> <input
								class="form-control" id="inputEmail4" name="email"
								placeholder="Ex: email@dominio.com.br" required
								onblur="valida('email'); validacaoEmail(form.email);">
						</div>

						<div class="form-group col-md-6">
							<label for="inputAddress2">RM</label> <input class="form-control"
								placeholder="RM" name="rm" id="rm" required
								onblur="valida('rm');">
						</div>

						<div class="form-group col-md-6">
							<label for="inputPassword4">Senha</label> <input
								class="form-control" placeholder="Senha" name="senha" id="senha"
								required onblur="valida('senha');" type="password">

						</div>


						<div class="form-group col-md-6">
							<label>Celular</label> <input type="text" class="form-control"
								placeholder="DD999999999" id="telefone" required
								name="telefone" />
						</div>

						<div class="form-group col-md-6">
							<label>CEP</label> <input id="cep" placeholder="Digite seu CEP"
								required name="cep" class="form-control" class="mb-3"
								pattern="\d*" maxlength="9" type="text" />
						</div>

						<div class="form-group col-md-6">
							<label>Logradouro</label> <input id="logradouro" type="text" name="logr"
								class="form-control" />
						</div>
						

						<div class="form-group col-md-6">
							<label>Nº</label> <input id="numero" type="text" required
								name="n" class="form-control" placeholder="123"/>
						</div>

						<div class="form-group col-md-6">
							<label>Bairro</label> <input id="bairro" type="text"
								name="bairro" class="form-control" />
						</div>

						<div class="form-group col-md-6">
							<label>Cidade</label> <input id="cidade" type="text"
								name="cidade" class="form-control" />
						</div>

						<div class="form-group col-md-6">
							<label>UF</label> <input id="uf" type="text" name="uf"
								class="form-control" />
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
	<script src="js/cep.js"></script>
	<script src="js/mask-cpf.js"></script>
	<!-- <script src="js/mask.js"></script> -->
</body>
</html>