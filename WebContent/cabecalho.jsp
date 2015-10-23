<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<c:if test="${sucesso != null}">
			<div class="alert alert-success alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			  	${sucesso}
			</div>
		</c:if>
		
		<c:if test="${erro != null}">
			<div class="alert alert-danger alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			  	${erro}
			</div>
		</c:if>
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  