<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>

<html>
<head>

<meta charset="UTF-8">

<title>Consultar Contato</title>

<!-- link para os arquivos de extensão .CSS -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css"
	type="text/css" />

</head>
<body>

	<!-- barra de menu superior do sistema -->
	<jsp:include page="/WEB-INF/views/components/navbar.jsp"></jsp:include>

	<div class="container mt-4">

		<h3>Consulta de Contato</h3>
		<p>Listagem de contatos cadastrados.</p>
		<hr />
		
		<table class="table table-hover table-sm">
			
			<thead>
				<tr>
					<th>Nome do contato</th>
					<th>Email</th>
					<th>Telefone</th>
					<th>Operações</th>
				</tr>
			</thead>
			
			<tbody>
			<c:forEach items="${lista_contatos }" var="contato">
				<tr>
						<td>${contato.nome}</td>
						<td>${contato.email}</td>
						<td>${contato.telefone}</td>
						<td>
					
						<a href="#" class="btn btn-primary btn-sm">Editar</a>
						<a href="#" class="btn btn-danger btn-sm">Excluir</a>
					
					</td>
				</tr>
			</c:forEach>
			</tbody>
			
			<tfoot>
				<tr>
					<td colspan="4">
						Quantidade de contatos: ${lista_contatos.size()}
					</td>
				</tr>
			</tfoot>
			
		</table>

	</div>

	<!-- link para os arquivos de extensão JS -->
	<script src="../resources/js/bootstrap.bundle.min.js"
		type="text/javascript"></script>

</body>
</html>
