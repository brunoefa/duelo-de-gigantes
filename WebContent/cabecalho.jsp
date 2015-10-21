<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" >
	<jsp:param value="${param.titulo}" name="titulo"/>
</jsp:include>
	<div class="container">
		<div class="header clearfix">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li role="presentation" class="${param.dactive}"><a href="duelo.jsp">Duelo</a></li>
					<li role="presentation" class="${param.cactive}"><a href="cadastro.jsp">Cadastro</a></li>
					<li role="presentation" class="${param.sactive}"><a href="sobre.jsp">Sobre</a></li>
				</ul>
			</nav>
			<h3 class="text-muted">Duelo de Gigantes</h3>
		</div>