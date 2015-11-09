<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="cabecalho.jsp" >
	<jsp:param value="Logout | Duelo de Gigantes" name="titulo"/>
	<jsp:param value="active" name="lactive"/>
</jsp:include>

<jsp:include page="introducao.jsp" >
	<jsp:param value="Deseja sair?" name="introducao"/>
	<jsp:param value="Você já está logado como <strong>${sessionScope.usuario.nome}</strong>, se deseja sair ou trocar de usuario basta efetuar logout no botão abaixo." name="texto"/>
	<jsp:param value="Logout" name="botao"/>
	<jsp:param value="usuario?acao=sair" name="destino"/>
</jsp:include>

<jsp:include page="rodape.jsp" />