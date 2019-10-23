<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
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
			<a class="nav-item nav-link" href="conteudoMatematica.jsp">Matemática</a>
			<a class="nav-item nav-link" href="construcao.jsp">Português</a> <a
				class="nav-item nav-link" href="construcao.jsp">Lógica de
				Programação</a>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false">Perfil</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="visualizarPerfil.jsp" id="alterar">Visualizar Perfil</a>
					<a class="dropdown-item" href="controller?tarefa=Logout">Logout</a>
				</div></li>
			<p>OLÁ ${aluno.nome.toUpperCase()}, SEJA BEM-VINDO!</p>
		</div>
	</div>
</nav>