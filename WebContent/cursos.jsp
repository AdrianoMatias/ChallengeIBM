<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bootstrap.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="css/principal.css">
<link rel="shortcut icon" href="img/favicon.ico" />

<title>Curso de Nivelamento</title>

</head>
<body>
	<c:choose>
		<c:when test="${not empty aluno}">
			<!--- Menu ------------------------------------>
			<%@include file="navlinkLogado.jsp"%>
			<%@include file="bannerPrincipal.jsp"%>
	<!-- Seção Principal -->
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card-deck">
					<div class="card">
						<img src="img/mat 02.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Matemática</h5>
							<p class="card-text">A Matemática é uma ciência que relaciona
								a lógica com situações práticas habituais. Ela desenvolve uma
								constante busca pela veracidade dos fatos por meio de técnicas
								precisas e exatas.</p>
							<a href="conteudoMatematica.jsp" class="btn btn-primary">Saiba
								mais...</a>
						</div>
					</div>

					<div class="card">
						<img src="img/ABC 01.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Português</h5>
							<p class="card-text">O estudo da gramática da língua
								portuguesa, que é a averiguação da correspondência entre o que
								se fala ou escreve e as normas ou leis vigentes para o uso da
								comunicação de forma culta, polida.</p>
							<a href="construcao.jsp" class="btn btn-primary">Saiba
								mais...</a>
						</div>
					</div>

					<div class="card">
						<img src="img/Log 01.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Lógica de Programação</h5>
							<p class="card-text">A Lógica de Programação é um paradigma
								de programação que faz uso da lógica matemática. Tornando a
								lógica uma ferramenta eficaz para o desenvolvimento de teorias.</p>
							<a href="construcao.jsp" class="btn btn-primary">Saiba
								mais...</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		</c:when>
		<c:otherwise>
			<a href="index.jsp">Voltar para tela de login.</a>

		</c:otherwise>
	</c:choose>


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
</body>
</html>