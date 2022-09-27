<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>

<meta charset="UTF-8">

<title>Acessar Conta</title>

<!-- link para os arquivos de extensão .CSS -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css"
	type="text/css" />

</head>
<body>

	<nav class="navbar navbar-expand-lg bg-primary navbar-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Agenda de Contatos</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="#">Minha
							Conta</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Gerenciar
							Contatos </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Cadastrar Contatos</a></li>
							<li><a class="dropdown-item" href="#">Consultar Contatos</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Relatório de
									Contatos</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="container mt-4">
		<h3>Seja bem vindo a agenda de contatos</h3>
		<hr/>
		
		<p>
			Nome do usuário: <strong>${usuario_auth.nome}</strong>
		</p>
		
		<p>
			Email de acesso: <strong>${usuario_auth.email}</strong>
		</p>
		
	</div>

	<!-- link para os arquivos de extensão JS -->
	<script src="../resources/js/bootstrap.bundle.min.js"
		type="text/javascript"></script>

</body>
</html>