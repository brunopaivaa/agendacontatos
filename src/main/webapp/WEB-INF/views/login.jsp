<html>
	<head>
		<title>Acessar Conta</title>
			
		<!-- link para os arquivos de extensão .CSS -->
		<link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css"/>	
	</head>
	<body class="bg-secondary">
		
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5 mb-5">					
					<div class="card-body">
						<div class="text-center">
							<img src="https://www.cotiinformatica.com.br/imagens/logo-coti-informatica.png"/>
							<h3>Agenda de Contatos</h3>
							<p>Entre com suas credenciais de acesso:</p>
							<hr/>
						</div>
						
						<form>
							
							<div class="mb-3">
								<label>Email de acesso:</label>
								<input type="text" placeholder="Digite aqui" class="form-control"/>
							</div>
							
							<div class="mb-3">
								<label>Senha de acesso:</label>
								<input type="password" placeholder="Digite aqui" class="form-control"/>
								<div class="text-end">
									<a href="/projetoweb01/password">
										Esqueci minha senha
									</a>
								</div>
							</div>
							
							<div class="mb-3">
								
								<div class="d-grid">
									<input type="submit" value="Acessar Conta" class="btn btn-primary"/>
								</div>
								
								<div class="d-grid">
									<a href="/projetoweb01/register" class="btn btn-light">
										Não possui conta? <strong>Cadastre-se aqui!</strong>
									</a>
								</div>
								
							</div>
						
						</form>
						
					</div>
				</div>
			</div>
		</div>
		
		<!-- link para os arquivos de extensão JS -->
		<script src="resources/js/bootstrap.bundle.min.js" type="text/javascript"></script>
		
	</body>
</html>
