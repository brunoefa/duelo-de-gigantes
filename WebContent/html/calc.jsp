<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/duelo/inicio" method="post">
		<input type="text" name="n1" placeholder="Número 1">
		<input type="text" name="op" placeholder="Operador">
		<input type="text" name="n2" placeholder="Número 2">
		<input type="submit">
	</form>
	
	<c:if test="${resultado != null}">
		<div>
			<h1>${n1} ${op} ${n2} = ${resultado}</h1>
		</div>
		<a href="html/calc.jsp">Limpar</a>
	</c:if>
</body>
</html>