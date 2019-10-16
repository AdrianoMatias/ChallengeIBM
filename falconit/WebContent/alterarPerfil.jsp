<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bootstrap.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="css/cadastro.css">
<link rel="stylesheet" type="text/css" href="css/formulario.css" />
<link rel="shortcut icon" href="img/favicon.ico" />

<title>Alterar Perfil</title>
</head>
<body>
	<!--- Menu ------------------------------------>
	<c:choose>
		<c:when test="${not empty aluno}">
			<%@include file="navlinkLogado.jsp"%>

			<%@include file="bannerPrincipal.jsp"%>
			<!-- Seção Principal -->

			<div class="container">
				<div class="row">
					<div class="col">
						<!-- FORM DE CADASTRO  -->
						<form name="form" action="controller" method="post">
							<div class="form-row">


								<div class="form-group col-md-6">
									<label for="inputAddress">Nome</label> <input autofocus
										class="form-control" placeholder="Nome" name="nome"
										id="form_name" required onblur="valida('nome');"
										value="${aluno.nome.replaceAll("_", " ").toUpperCase() }" autofocus>
								</div>

								<div class="form-group col-md-6">
									<label for="inputAddress">Sobrenome</label> <input
										class="form-control" placeholder="Sobrenome" name="sobrenome"
										id="sobrenome" required value="${aluno.sobrenome.replaceAll("_", " ").toUpperCase() }" onblur="valida('sobrenome');">
								</div>

								<div class="form-group col-md-6">
									<label>CPF/CNPJ</label> <input id="cpfOuCnpj" name=cpf
										type="text" class="form-control"
										readonly="true" value=${aluno.cpf } />
								</div>


								<div class="form-group col-md-6">
									<label for="inputEmail4">Email</label> <input
										class="form-control" id="inputEmail4" name="email"
										placeholder="email@dominio.com.br" required
										onblur="valida('email');"
										value=${aluno.email }>
								</div>
								
								<div class="form-group col-md-6">
									<label for="inputPassword4">Senha</label> <input
										class="form-control" placeholder="Senha" name="senha"
										id="senha" type="password" required onblur="valida('senha');"
										value=${aluno.senha }>

								</div>


								<div class="form-group col-md-6">
									<label>Celular</label> <input type="text" class="form-control"
										placeholder="(DD)9.9999-9999" id="telefone" required
										name="telefone" value=${aluno.telefone } onblur="valida('celular');" />
								</div>

								<div class="form-group col-md-6">
									<label>CEP</label> <input id="cep" placeholder="Digite seu CEP"
										required name="cep" class="form-control" class="mb-3"
										pattern="\d*" maxlength="9" type="text" value=${aluno.cep } onblur="valida('cep');"
										>
								</div>

								<div class="form-group col-md-6">
									<label>Logradouro</label> <input id="logradouro" type="text" onblur="valida('logradouro');"
										name="logr" class="form-control" value="${aluno.logr.replaceAll("_", " ").toUpperCase() }" >
								</div>


								<div class="form-group col-md-6">
									<label>Nº</label> <input id="numero" type="text" required
										placeholder="123" name="n" class="form-control"
										value="${aluno.numero }" onblur="valida('numero')">
								</div>

								<div class="form-group col-md-6">
									<label>Bairro</label> <input id="bairro" type="text" onblur="valida('bairro');"
										name="bairro" class="form-control" value="${aluno.bairro.replaceAll("_", " ").toUpperCase() }" >
								</div>

								<div class="form-group col-md-6">
									<label>Cidade</label> <input id="cidade" type="text" onblur="valida('cidade');"
										name="cidade" class="form-control" value="${aluno.cidade.replaceAll("_", " ").toUpperCase() }" >
								</div>

								<div class="form-group col-md-6">
									<label>UF</label> <input id="uf" type="text" name="uf"
										class="form-control"value=${aluno.uf } onblur="valida('uf');"/>
								</div>


								<div class="form-group col-md-3">
								
									<button id="btn" class="btn btn-primary" name="tarefa"
										value="Alterar">Alterar</button>
										<a href="visualizarPerfil.jsp">Voltar</a>
								</div>

							</div>

						</form>
					</div>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<a href="index.jsp">Voltar para tela de login.</a>

		</c:otherwise>
	</c:choose>
	<!--------------------------------------------------------------------------------------------------------->


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