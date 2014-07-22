<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link href="jquery-ui-1.11.0.custom/jquery-ui.css" rel="stylesheet">
	<script src="jquery-ui-1.11.0.custom/external/jquery/jquery.js"></script>
	<script src="jquery-ui-1.11.0.custom/jquery-ui.js"></script>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	
	<h1>Adiciona Contatos</h1>
	<hr />
	<form action="adicionaContato">
		Nome: <input type="text" name="nome" /><br />
		E-mail: <input type="text" name="email" /><br />
		Endereço: <input type="text" name="endereco" /><br />
		Data Nascimento: <caelum:campoData id="dataNascimento" /><br />
		
		<input type="submit" value="Gravar"/>
	</form>
	
	<c:import url="rodape.jsp" />
</body>
</html>