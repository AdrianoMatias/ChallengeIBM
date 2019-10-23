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
	<div class="container">
		<div class="row">
			<div class="col">
				<a href="cursos.html"><img class="construcao"
					src="img/construcao1.png" alt="pagina em construção"></a>
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