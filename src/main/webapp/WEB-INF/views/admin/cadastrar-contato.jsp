<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>

<html>
<head>

<meta charset="ISO-8859-1">

<title>Cadastrar Contato</title>

<!-- link para os arquivos de extensão .CSS -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css"
	type="text/css" />
	
<!-- estilos para a validação -->
<style>
	label.error { color: #d9534f; }
	input.error { border: 2px solid #d9534f; }
</style>

</head>
<body>

	<!-- barra de menu superior do sistema -->
	<jsp:include page="/WEB-INF/views/components/navbar.jsp"></jsp:include>

	<div class="container mt-4">

		<h3>Cadastro de Contato</h3>
		<p>Preencha os campos para incluir um contato.</p>
		<hr />
		
		<form id="form_contato" action="executar-cadastro-contato" method="post">
		
			<div class="row mb-3">
				<div class="col-md-6">
					<label>Nome do Contato:</label>
					<input type="text" name="nome" class="form-control"/>
				</div>
				<div class="col-md-3">
					<label>Endereço de email:</label>
					<input type="text" name="email" class="form-control"/>
				</div>
				<div class="col-md-3">
					<label>Telefone:</label>
					<input type="text" name="telefone" id="telefone" class="form-control"/>
				</div>
			</div>
			
			<div class="row mb-3">
				<div class="col-md-12">
					<input type="submit" value="Realizar Cadastro" class="btn btn-success"/>
					<input type="reset" value="Limpar" class="btn btn-secondary"/>
				</div>
			</div>
		
		</form>
		
		<div class="text-sucess">
			<strong>${mensagem_sucesso}</strong>
		</div>
		<div class="text-danger">
			<strong>${mensagem_erro}</strong>
		</div>
		

	</div>

	<!-- link para os arquivos de extensão JS -->
	<script src="../resources/js/bootstrap.bundle.min.js" type="text/javascript"></script>
		
	<script src="../resources/js/jquery-3.6.1.min.js" type="text/javascript"></script>
	<script src="../resources/js/jquery.validate.min.js" type="text/javascript"></script>
	<script src="../resources/js/additional-methods.min.js" type="text/javascript"></script>
	<script src="../resources/js/messages_pt_BR.min.js" type="text/javascript"></script>
	<script src="../resources/js/jquery.maskedinput.min.js" type="text/javascript"></script>
		
	<script>
		
		//função para inicialização do JQuery
		$(document).ready(function() {
				
			//configurando a validação do formulário
			$("#form_contato").validate({
				rules: {
					"nome" : { required: true, minlength: 8, maxlength: 150 },
					"email" : { required: true, email : true },
					"telefone" : { required: true }
				}
			});
			
			$("#telefone").mask("(99) 9999-9999");
			
		});
		
	</script>

</body>
</html>
