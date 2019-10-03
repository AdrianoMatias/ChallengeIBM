<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="css/cadastro.css" type="text/css" />
<link rel="stylesheet" href="css/principal.css" type="text/css" />

<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="css/bootstrap-grid.css" type="text/css" />
<link rel="stylesheet" href="css/bootstrap-reboot.css" type="text/css" />


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
				<a class="nav-item nav-link" href="index.jsp">Matemática</a> 
				<a
					class="nav-item nav-link" href="index.jsp">Português</a> 
					<a
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
				<form action="controller" method="post" name="form">
					<input type="hidden" name="tarefa" value="Login" />
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputAddress2">Usuário</label> <input type="text"
								class="form-control" id="rm" placeholder="Entre com seu RM."
								name="rm" required onblur="valida('rm');">
						</div>

						<div class="form-group col-md-6">
							<label for="inputPassword4">Senha</label> <input type="password"
								class="form-control" id="senha" placeholder="Senha" name="senha"
								required onblur="valida('senha')">
						</div>
					</div>

					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<label class="form-check-label"> <a class="tiraLink"
									href="esqueceu-senha.jsp" target="_blank">Esqueceu a senha?</a>
								</label>
							</div>

							<div class="col-md-6">
								<label class="form-check-label" for="gridCheck"> <a
									class="tiraLink" href="cadastro.jsp" target="_blank">Cadastre-se</a>
								</label>

								<button id="btnEntrar" class="btn btn-primary">Entrar</button>

							</div>
						</div>
					</div>

					<br>
				</form>
			</div>
		</div>
	</div>

	<!------------------------------------------------------------------------------------------------------------------------------------------------------->

	<footer>
		<p>Falcon IT &copy 2019 Todos os direitos reservados</p>
	</footer>



	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/validaLogin.js"></script>

</body>
</html>