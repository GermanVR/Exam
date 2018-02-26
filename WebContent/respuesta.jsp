<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	El nombre es:
	<%=request.getParameter("nombre")%>
	<br> Tu Edad Es:
	<%=request.getParameter("edad")%>
	<br>El Sexo Es:
	<%=request.getParameter("sexo")%>
	<br>El tipo de Persona es:
	<%=request.getParameter("tipoP")%>
	<table border="1">

		<%
			for (int i = Integer.parseInt(request.getParameter("tab_ini")); i <= Integer
					.parseInt(request.getParameter("tab_fin")); i++) {
		%>
		<tr>
			<%
				for (int j = 1; j <= 10; j++) {
			%>
			<td><%=i%> * <%=j%> = <%=i * j%></td>
			<%
				}
			%>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>