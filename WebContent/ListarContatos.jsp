<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Agenda</title>
<link rel="stylesheet" type="text/css" href="agenda.css">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Global</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="index.html">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="busca-contatos">Listar</a></li>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div>
				</li>
				<li class="nav-item"><a class="nav-link disabled" href="#"
					tabindex="-1" aria-disabled="true">Disabled</a></li>
			</ul>

		</div>
	</nav>

	<h1>Contatos</h1>
	<br>

	<table class="table">
		<thead>
			<tr>
				<th scope="col">Nome</th>
				<th scope="col">E-mail</th>
				<th scope="col">Endereço</th>
				<th scope="col">Telefone</th>
				<th scope="col">opções</th>
			</tr>
		</thead>
		
		<tbody>
		
		<c:forEach var="pessoa" items="${contatos}">
			<tr>
				<th>${pessoa.nome}</th>
				<td>${pessoa.email}</td>
				<td>${pessoa.endereco}</td>
				<td>${pessoa.telefone}</td>
				<td><button type="button" class="btn btn-warning">Remover</button></td>
				
			</tr>
			</c:forEach>
			
		</tbody>
	</table>

	<button id="button" type="button" class="btn btn-dark">
		<a href="adiciona-contato.html">Voltar</a>
	</button>
</body>
</html>