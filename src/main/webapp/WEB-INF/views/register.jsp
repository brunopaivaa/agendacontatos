<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
	<head>
	
		<meta charset="UTF-8">
	
		<title>Criar Conta</title>
			
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
							<h2>Criar Conta de Usuário</h2>
							<p>Entre com seus dados para cadastrar sua conta:</p>
							<hr/>
						</div>
						
						<form id="form_register" method="post" action="register-user">
							
							<div class="mb-3">
								<label>Informe seu nome:</label>
								<input type="text" id="nome" name="nome" placeholder="Digite aqui" class="form-control"/>
							</div>
							
							<div class="mb-3">
								<label>Informe seu email de acesso:</label>
								<input type="text" id="email" name="email" placeholder="Digite aqui" class="form-control"/>
								<span class="text-danger">
									${mensagem_email}
								</span>
							</div>
							
							<div class="mb-3">
								<label>Informe sua senha de acesso:</label>
								<input type="password" id="senha" name="senha" placeholder="Digite aqui" class="form-control"/>								
							</div>
							
							<div class="mb-3">
								<label>Confirme sua senha de acesso:</label>
								<input type="password" id="senhaConfirmacao" name="senhaConfirmacao" placeholder="Digite aqui" class="form-control"/>								
							</div>
							
							<div class="mb-3">
								
								<div class="d-grid">
									<input type="submit" value="Realizar Cadastro" class="btn btn-success"/>
								</div>
								
								<div class="d-grid">
									<a href="/projetoweb01/" class="btn btn-light">
										Já possui conta? <strong>Acesse aqui!</strong>
									</a>
								</div>
								
							</div>
						
						</form>
						<div class="text-sucess text-center">
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
				$("#form_register").validate({
					rules: {
						"nome" : { required: true, minlength: 6, maxlength: 150 },
						"email" : { required: true, email : true },
						"senha" : { required: true, minlength: 8, maxlength: 20 },
						"senhaConfirmacao" : { required: true, equalTo: "#senha" }
					}
				});
				
			});
		
		</script>
		
	</body>
</html>
