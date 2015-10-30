<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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

		<div class="row marketing">
			<div class="col-lg-12">
				<div>
					<div style="float: left;">
						<img data-src="holder.js/100x100" class="img-circle"
							src="${duelo.imagem1}"
							data-holder-rendered="true" style="width: 100px; height: 100px;">
					</div>
					<div class="center chart1" style="width: 500px">150</div>
				</div>
				<p></p>
				<div>
					<div style="float: left;">
						<img data-src="holder.js/100x100" class="img-circle"
							src="${duelo.imagem2}"
							data-holder-rendered="true" style="width: 100px; height: 100px;">
					</div>
					<div class="center chart2" style="width: 200px">70</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="rodape.jsp" />