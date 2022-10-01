<nav class="navbar navbar-expand-lg bg-primary navbar-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Agenda de Contatos</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="/projetoweb01/admin/home">Página inicial</a></li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Gerenciar Contatos </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/projetoweb01/admin/cadastrar-contato">Cadastrar Contatos</a></li>
						<li><a class="dropdown-item" href="/projetoweb01/admin/consultar-contato">Consultar Contatos</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="/projetoweb01/admin/relatorio-contato">Relatório de Contatos</a></li>
					</ul>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Minha Conta </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/projetoweb01/admin/alterar-senha">Alterar Senha</a></li>
					</ul>
				</li>
			</ul>
			
			<div class="d-flex">
				<div class="text-white">				
					<strong>${usuario_auth.nome}</strong> (${usuario_auth.email})					
					&nbsp;					
					<a href="/projetoweb01/logout"
						class="btn btn-outline-light btn-sm"
						onclick="return confirm('Deseja realmente encerrar sua sessão?');">
						Logout
					</a>					
				</div>
			</div>			
			
		</div>
	</div>
</nav>
