<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bootstrap.jsp"%>
<link rel="stylesheet" href="css/cadastro.css" type="text/css" />
<link rel="stylesheet" href="css/principal.css" type="text/css" />
<link rel="shortcut icon" href="img/favicon.ico" />

<title>Curso de Nivelamento</title>
<style>
	#linkLogin{
		margin-left: 1300px;
	}
</style>
</head>
<body>
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
				<a class="nav-item nav-link" id="linkLogin" href="login.jsp">Login</a>

			</div>
		</div>
	</nav>
	<%@include file="bannerPrincipal.jsp"%>

	<div class="container">
		<div class="row">
			<div class="card-deck">
				<div class="card">
					<img class="card-img-top" src="img/planomensal.jpg"
						alt="Imagem de capa do card" />
					<div class="card-body">
						<p class="card-text">
						<li>Acesso 24 horas</li>
						<li>7 dias na semana</li>
						<li>Multiplataforma</li>
						</p>
						<p class="card-text">
							<!-- INICIO FORMULARIO BOTAO PAGSEGURO: NAO EDITE OS COMANDOS DAS LINHAS ABAIXO -->
						<form
							action="https://pagseguro.uol.com.br/pre-approvals/request.html"
							method="post">
							<input type="hidden" name="code"
								value="413ABDE8AFAFB0E8848C3FA54C9A2122" /> <input
								type="hidden" name="iot" value="button" /> <input type="image"
								class="btnPag"
								src="https://stc.pagseguro.uol.com.br/public/img/botoes/assinaturas/120x53-assinar-azul.gif"
								name="submit"
								alt="Pague com PagSeguro - É rápido, grátis e seguro!"
								width="120" height="53" />
						</form>
						<!-- FINAL FORMULARIO BOTAO PAGSEGURO -->
						</p>
					</div>
					<div class="card-footer">
						<p class="preco">R$ 9,90</p>
					</div>
				</div>
				<div class="card">
					<img class="card-img-top" src="img/planotrimestral.jpg"
						alt="Imagem de capa do card" />
					<div class="card-body">
						<p class="card-text">
						<li>Acesso 24 horas</li>
						<li>7 dias na semana</li>
						<li>Multiplataforma</li>
						
						</p>
						<p class="card-text">
							<!-- INICIO FORMULARIO BOTAO PAGSEGURO: NAO EDITE OS COMANDOS DAS LINHAS ABAIXO -->
						<form
							action="https://pagseguro.uol.com.br/pre-approvals/request.html"
							method="post">
							<input type="hidden" name="code"
								value="413ABDE8AFAFB0E8848C3FA54C9A2122" /> <input
								type="hidden" name="iot" value="button" /> <input type="image"
								class="btnPag"
								src="https://stc.pagseguro.uol.com.br/public/img/botoes/assinaturas/120x53-assinar-azul.gif"
								name="submit"
								alt="Pague com PagSeguro - É rápido, grátis e seguro!"
								width="120" height="53" />
						</form>
						<!-- FINAL FORMULARIO BOTAO PAGSEGURO -->

						</p>
					</div>
					<div class="card-footer">
						<p class="preco">R$ 26,70</p>
					</div>
				</div>
				<div class="card">
					<img class="card-img-top" src="img/planosemestral.jpg"
						alt="Imagem de capa do card" />
					<div class="card-body">
						<p class="card-text">
						<li>Acesso 24 horas</li>
						<li>7 dias na semana</li>
						<li>Multiplataforma</li>

						</p>
						<p class="card-text">
							<!-- INICIO FORMULARIO BOTAO PAGSEGURO: NAO EDITE OS COMANDOS DAS LINHAS ABAIXO -->
						<form
							action="https://pagseguro.uol.com.br/pre-approvals/request.html"
							method="post">
							<input type="hidden" name="code"
								value="505CA6BD4949A24DD45C0F8771768BBD" /> <input
								type="hidden" name="iot" value="button" /> <input type="image"
								class="btnPag"
								src="https://stc.pagseguro.uol.com.br/public/img/botoes/assinaturas/120x53-assinar-azul.gif"
								name="submit"
								alt="Pague com PagSeguro - É rápido, grátis e seguro!"
								width="120" height="53" />
						</form>
						<!-- FINAL FORMULARIO BOTAO PAGSEGURO -->
					</div>
					<div class="card-footer">
						<p class="preco">R$ 56,40</p>
					</div>
				</div>

				<div class="card">
					<img class="card-img-top" src="img/planoanual.jpg"
						alt="Imagem de capa do card" />
					<div class="card-body">
						<p class="card-text">
						<li>Acesso 24 horas</li>
						<li>7 dias na semana</li>
						<li>Multiplataforma</li>
				
						</p>
						<p class="card-text">
							<!-- INICIO FORMULARIO BOTAO PAGSEGURO: NAO EDITE OS COMANDOS DAS LINHAS ABAIXO -->
						<form
							action="https://pagseguro.uol.com.br/pre-approvals/request.html"
							method="post">
							<input type="hidden" name="code"
								value="3B39DE9CC5C5384444B98F98712454D4" /> <input
								type="hidden" name="iot" value="button" /> <input type="image"
								class="btnPag"
								src="https://stc.pagseguro.uol.com.br/public/img/botoes/assinaturas/120x53-assinar-azul.gif"
								name="submit"
								alt="Pague com PagSeguro - É rápido, grátis e seguro!"
								width="120" height="53" />
						</form>
						<!-- FINAL FORMULARIO BOTAO PAGSEGURO -->
						</p>
					</div>
					<div class="card-footer">
						<p class="preco">R$ 106,00</p>
					</div>
				</div>
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