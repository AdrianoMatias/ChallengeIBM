<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bootstrap.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="css/principal.css" />
<link rel="shortcut icon" href="img/favicon.ico" />

<title>Excluir Cadastro</title>
</head>
<body>
	<!--- Menu ------------------------------------>
	<c:choose>
		<c:when test="${not empty aluno}">
			<%@include file="navlinkLogado.jsp"%>
			<%@include file="bannerPrincipal.jsp"%>
			<div class="container">
				<div class="row">
					<div class="col">
						<form action="controller" method="post" name="form">
							<h1>Deseja excluir?</h1>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputAddress2">Usuário</label> <input type="text"
										class="form-control" id="rm" placeholder="Entre com seu RM."
										name="rm" required onblur="valida('rm');">
								</div>

								<div class="form-group col-md-6">
									<label for="inputPassword4">Senha</label> <input
										type="password" class="form-control" id="senha"
										placeholder="Senha" name="senha" required
										onblur="valida('senha')">
								</div>
							</div>
							<div class="container">
								<div class="row">
									<div class="col-md-6">
									<a href="visualizarPerfil.jsp">Voltar</a>
										<button id="btnExcluir" type="submit" class="btn btn-primary"
											name="tarefa" value="Excluir">Excluir</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>

		</c:when>
		<c:otherwise>

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
	<script type="text/javascript" src="js/validaLogin.js"></script>

</body>
</html>