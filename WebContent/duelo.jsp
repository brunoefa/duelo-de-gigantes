<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="cabecalho.jsp" >
	<jsp:param value="Duelo | Duelo de Gigantes" name="titulo"/>
	<jsp:param value="active" name="dactive"/>
</jsp:include>

<jsp:include page="introducao.jsp" >
	<jsp:param value="Hora de Duelar" name="introducao"/>
	<jsp:param value="Escolha seu guerreiro e comece a batalha. Torça para que seu exercito seja mais forte do que o rival." name="texto"/>
	<jsp:param value="Quero cadastrar um novo Duelo!" name="botao"/>
	<jsp:param value="duelo?acao=cadastrar" name="destino"/>
</jsp:include>

	<div class="row marketing">
		<div class="col-lg-6">
			<div class="center">
				<a href="duelo?acao=votar&id=${duelo.id}&oponente=1"> <img data-src="holder.js/300x300"
					class="img-circle" alt="Oponente 1"
					src="${duelo.imagem1}"
					data-holder-rendered="true" style="width: 300px; height: 300px;">
				</a>
			</div>
			<h2 class="center">${duelo.nome1}</h2>
		</div>

		<div class="col-lg-6">
			<div class="center">
				<a href="duelo?acao=votar&id=${duelo.id}&oponente=2"> <img data-src="holder.js/300x300"
					class="img-circle" alt="300x300"
					src="${duelo.imagem2}"
					data-holder-rendered="true" style="width: 300px; height: 300px;">
				</a>
			</div>
			<h2 class="center">${duelo.nome2}</h2>
		</div>
		<p class="center action-bar">
			<a class="btn btn-lg btn-info" href="duelo" role="button">PróximoDuelo</a>
		</p>
	</div>
</div>

<jsp:include page="rodape.jsp" />