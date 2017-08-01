<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body>

	<div class="container-fluid">

		<form name="produtoForm" action="/casadocodigo/produtos/post" method="post">
			<div class="form-group">
				<label>T�tulo</label>			
				<input type="text" name="titulo" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Descri��o</label>			
				<textarea name="descricao" class="form-control">
				</textarea>
			</div>
			<div class="form-group">
				<label>P�ginas</label>			
				<input type="number" name="paginas" class="form-control"/>
			</div>
			
			<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
				<div class="form-group">
					<label>${tipoPreco}</label>
					<input class="form-control" type="text" name="precos[${status.index}].valor" />
					<input type="hidden" name="precos[${status.index}].tipoPreco" value="${tipoPreco}" />
				</div>
			</c:forEach>
			
			<button type="submit" class="btn btn-default">Salvar</button>
		</form>

	</div>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>

</body>
</html>