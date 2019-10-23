<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="css/principal.css">
<link rel="stylesheet" href="css/conteudo-matematica.css">
<link rel="stylesheet" href="css/chat.css">
<link rel="shortcut icon" href="img/favicon.ico" />



<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-grid.css">
<link rel="stylesheet" href="css/bootstrap-reboot.css">

<title>Curso de Nivelamento</title>
</head>
<body>
	<!--- Menu ------------------------------------>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="cursos.jsp"><img class="logo"
			src="img/Falcon IT-01.png"></a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">

			<div class="navbar-nav">
				<div class="navbar-nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
						role="button" aria-haspopup="true" aria-expanded="false">Matemática</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#1grau">Função 1º Grau</a> <a
								class="dropdown-item" href="#startup">Startup</a> <a
								class="dropdown-item" href="#2grau">Função de 2º Grau</a> <a
								class="dropdown-item" href="#temperatura">Temperatura</a> <a
								class="dropdown-item" href="#mol">Mol</a>
							
						</div>
				</div>

				</li> <a class="nav-item nav-link" href="construcao.jsp">Português</a> <a
					class="nav-item nav-link" href="construcao.jsp">Lógica de
					Programação</a>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false">Perfil</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="visualizarPerfil.jsp">Visualizar Perfil</a> <a
							class="dropdown-item" href="controller?tarefa=Logout">Logout</a>						
					</div>
			</div>
	</nav>

	<%@include file="bannerPrincipal.jsp"%>

	<div id="chatbot" class="box">
		<div class="box-cabecalho">
			<img class="logo" src="img/Falcon IT-01.png" alt="" />
		</div>
		<div class="chat-container"></div>
		<div class="rodape">
			<div class="form-group">
				<textarea id="question" name="question" class="form-control"
					id="exampleFormControlTextarea1" rows="1"></textarea>
			</div>
		</div>

		<div class="container-chat">
			<div class="row">
				<div class="col-6">
					<button type="button" class="btn btn-primary" class="botao"
						id="sendQuestion">Send</button>
				</div>
				<div class="col-6">
					<button type="button" class="btn btn-primary" class="botao"
						id="recordButton">Record</button>
				</div>
			</div>
		</div>
	</div>

	<div class="zoom">
		<img id="imgBot" class="imgBot2" src="img/bot.png" alt="Bot" height="80" width="80" >
	</div>

	<%@include file="conteudoMat.jsp"%>

	<footer>
		<p>Falcon IT &copy 2019 Todos os direitos reservados</p>
	</footer>


	<script src="js/chatbot.js" charset="utf-8"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>


	<script
		src="https://cdn.rawgit.com/mattdiamond/Recorderjs/08e7abd9/dist/recorder.js"></script>
	<script type="text/javascript" src="js/full.js"></script>
</body>
</html>