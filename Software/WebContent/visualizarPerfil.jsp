<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bootstrap.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="css/cadastro.css">
<link rel="stylesheet" type="text/css" href="css/formulario.css" />
<link rel="shortcut icon" href="img/favicon.ico" />

<title>Perfil</title>
</head>
<body>
	<!--- Menu ------------------------------------>
	<c:choose>
		<c:when test="${not empty aluno}">
			<!--- Menu ------------------------------------>
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
									<label for="inputAddress">Nome</label> <input
										class="form-control" name="nome" id="form_name"
										value="${aluno.nome.replaceAll("_", " ").toUpperCase() }" readonly="true" />
								</div>

								<div class="form-group col-md-6">
									<label for="inputAddress">Sobrenome</label> <input
										class="form-control" name="sobrenome" id="form_name"
										value="${aluno.sobrenome.replaceAll("_", " ").toUpperCase()  }" readonly="true"  />
								</div>

								<div class="form-group col-md-6">
									<label>CPF/CNPJ</label> <input id="cpfOuCnpj" required name=cpf
										type="text" class="form-control" placeholder="CPF/CNPJ"
										readonly="true" value=${aluno.cpf } />
								</div>


								<div class="form-group col-md-6">
									<label for="inputEmail4">Email</label> <input
										class="form-control" id="inputEmail4" name="email"
										value=${aluno.email } readonly="true" />
								</div>

								<div class="form-group col-md-6">
									<label for="inputAddress2">RM</label> <input
										class="form-control" name="rm" id="rm" readonly="true"
										value=${aluno.rm } />
								</div>

								<div class="form-group col-md-6">
									<label for="inputPassword4">Senha</label> <input
										class="form-control" readonly="true" name="senha" id="senha"
										type="password" value=${aluno.senha } />
								</div>


								<div class="form-group col-md-6">
									<label>Celular</label> <input type="text" class="form-control"
										readonly="true" id="telefone" name="telefone"
										value="${aluno.telefone }" />
								</div>

								<div class="form-group col-md-6">
									<label>CEP</label> <input id="cep" name="cep" readonly="true"
										class="form-control mb-3" value=${aluno.cep }  />
								</div>

								<div class="form-group col-md-6">
									<label>Logradouro</label> <input id="logradouro" type="text"
										name="logr" class="form-control" value="${aluno.logr.replaceAll("_", " ").toUpperCase()  }"
										readonly="true" />
								</div>


								<div class="form-group col-md-6">
									<label>Nº</label> <input id="numero" type="text"
										readonly="true" name="n" class="form-control"
										value=${aluno.numero }>
								</div>

								<div class="form-group col-md-6">
									<label>Bairro</label> <input readonly="true" id="bairro" type="text"
										name="bairro" class="form-control" value="${aluno.bairro.replaceAll("_", " ").toUpperCase()  }" />
								</div>

								<div class="form-group col-md-6">
									<label>Cidade</label> <input id="cidade" readonly="true" type="text"
										name="cidade" class="form-control" value="${aluno.cidade.replaceAll("_", " ").toUpperCase()  }" >
								</div>

								<div class="form-group col-md-6">
									<label>UF</label> <input id="uf" readonly="true" type="text" name="uf"
										class="form-control" value=${aluno.uf } />
								</div>
							</div>
						</form>
						<a class="linkAlterar" href="alterarPerfil.jsp">Alterar</a> <a
							class="linkExcluir" href="excluirPerfil.jsp">Excluir</a>
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
		<script type="text/javascript" src="js/masks.js"></script>

</body>
</html>