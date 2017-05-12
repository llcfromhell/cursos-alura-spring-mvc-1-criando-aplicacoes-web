<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

		<form name="produtoForm" action="/casadocodigo/produtos" method="post">
			<div class="form-group">
				<label>Título</label>			
				<input type="text" name="titulo" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Descrição</label>			
				<textarea name="descricao" class="form-control">
				</textarea>
			</div>
			<div class="form-group">
				<label>Páginas</label>			
				<input type="number" name="paginas" class="form-control"/>
			</div>
			<button type="submit" class="btn btn-default">Salvar</button>
		</form>

	</div>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>

</body>
</html>