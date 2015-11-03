<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="cabecalho.jsp" >
	<jsp:param value="Resultado | Duelo de Gigantes" name="titulo"/>
	<jsp:param value="active" name="dactive"/>	
</jsp:include>

<jsp:include page="introducao.jsp" >
	<jsp:param value="Resultado do Duelo" name="introducao"/>
	<jsp:param value="Veja o resultado e certifique-se de que você está do lado certo nesta guerra!" name="texto"/>
	<jsp:param value="Próximo Duelo" name="botao"/>
	<jsp:param value="duelo" name="destino"/>
</jsp:include>

		<c:set var="totalVitorias" value="${duelo.vitorias1 + duelo.vitorias2}" />
		<c:set var="porcentagemV1" value="${duelo.vitorias1 * 100 / totalVitorias}" />
		<c:set var="porcentagemV2" value="${duelo.vitorias2 * 100 / totalVitorias}" />
		<c:set var="largura1" value="${porcentagemV1 * 560 / 100}" />		
		<c:set var="largura2" value="${porcentagemV2 * 560 / 100}" />
		
		<div class="row marketing">
			<div class="col-lg-12">
				<c:if test="${duelo.vitorias2 > duelo.vitorias1}">
					<jsp:include page="barra.jsp">
						<jsp:param value="${duelo.imagem2}" name="imagem"/>
						<jsp:param value="${porcentagemV2}" name="porcentagem"/>
						<jsp:param value="${largura2}" name="largura"/>
						<jsp:param value="chart2" name="classe"/>
					</jsp:include>
					<p></p>
				</c:if>
				<jsp:include page="barra.jsp">
					<jsp:param value="${duelo.imagem1}" name="imagem"/>
					<jsp:param value="${porcentagemV1}" name="porcentagem"/>
					<jsp:param value="${largura1}" name="largura"/>
					<jsp:param value="chart1" name="classe"/>
				</jsp:include>
				<c:if test="${duelo.vitorias1 >= duelo.vitorias2}">
					<p></p>
					<jsp:include page="barra.jsp">
						<jsp:param value="${duelo.imagem2}" name="imagem"/>
						<jsp:param value="${porcentagemV2}" name="porcentagem"/>
						<jsp:param value="${largura2}" name="largura"/>
						<jsp:param value="chart2" name="classe"/>
					</jsp:include>
				</c:if>								
			</div>
		</div>
	</div>
<jsp:include page="rodape.jsp" />