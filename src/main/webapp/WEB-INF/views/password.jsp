<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
	<head>
	
		<meta charset="UTF-8">
	
		<title>Recuperar Senha</title>
			
		<!-- link para os arquivos de extensão .CSS -->
		<link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css"/>	
		
		<!-- estilos para a validação -->
		<style>
			label.error { color: #d9534f; }
			input.error { border: 2px solid #d9534f; }
		</style>
		
	</head>
	<body class="bg-secondary">
		
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5 mb-5">					
					<div class="card-body">
						<div class="text-center">
							<h2>Esqueci minha senha</h2>
							<p>Entre com seus dados para recuperar sua senha:</p>
							<hr/>
						</div>
						
						<form id="form_password" action="password-user">
							
							<div class="mb-3">
								<label>Informe seu email de acesso:</label>
								<input type="text" id="email" name="email" placeholder="Digite aqui" class="form-control"/>
							</div>
														
							<div class="mb-3">
								
								<div class="d-grid">
									<input type="submit" value="Recuperar Senha" class="btn btn-success"/>
								</div>
								
								<div class="d-grid">
									<a href="/projetoweb01/" class="btn btn-light">
										<strong>Voltar</strong>
									</a>
								</div>
								
							</div>
						
						</form>
						
						<div class="text-success text-center">
							<strong>${mensagem_sucesso}</strong>
						</div>
						
						<div class="text-danger text-center">
							<strong>${mensagem_erro}</strong>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		
		<!-- link para os arquivos de extensão JS -->
		<script src="resources/js/bootstrap.bundle.min.js" type="text/javascript"></script>
		<script src="resources/js/jquery-3.6.1.min.js" type="text/javascript"></script>
		<script src="resources/js/jquery.validate.min.js" type="text/javascript"></script>
		<script src="resources/js/additional-methods.min.js" type="text/javascript"></script>
		<script src="resources/js/messages_pt_BR.min.js" type="text/javascript"></script>
		
		<script>
		
			//função para inicialização do JQuery
			$(document).ready(function() {
				
				//configurando a validação do formulário
				$("#form_password").validate({
					rules: {
						"email" : { required: true, email : true }
					}
				});
				
			});
		
		</script>
		
	</body>
</html>

