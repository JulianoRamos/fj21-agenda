<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.logging.SimpleFormatter"%>
<%@ page
	import="java.util.*,
			br.com.caelum.agenda.dao.*,
			br.com.caelum.agenda.modelo.*"%>
<html>
<body>
	<table border="1">
		<tr>
			<td>Nome</td>
			<td>E-Mail</td>
			<td>Endereço</td>
			<td>Data</td>
		</tr>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			for (Contato contato : contatos) {
		%>
		<tr>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=dateFormat.format(contato.getDataNascimento().getTime())%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>
