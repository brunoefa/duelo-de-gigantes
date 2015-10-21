<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="cabecalho.jsp" >
	<jsp:param value="Sobre | Duelo de Gigantes" name="titulo"/>
	<jsp:param value="active" name="sactive"/>
</jsp:include>

<jsp:include page="introducao.jsp" >
	<jsp:param value="Duelo de Gigantes" name="introducao"/>
	<jsp:param value="Conheça um pouco mais e saiba como surgiu o projeto Duelo de Gigantes." name="texto"/>
	<jsp:param value="Cadastrar Duelo" name="botao"/>
	<jsp:param value="cadastro.jsp" name="destino"/>
</jsp:include>

		<div class="row marketing">
			<div class="col-lg-12">
				<h2>Sobre</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Mauris facilisis erat sed mauris maximus efficitur. In magna metus,
					fermentum sed bibendum ut, dictum quis neque. Cras ultricies
					venenatis magna quis pulvinar. Duis et leo pharetra metus posuere
					auctor. In sodales ex a felis porta cursus. Phasellus suscipit
					mattis gravida. Duis vitae massa nisi. Class aptent taciti sociosqu
					ad litora torquent per conubia nostra, per inceptos himenaeos. In
					hac habitasse platea dictumst. Aliquam aliquet faucibus urna a
					varius. Praesent commodo congue lobortis. Vestibulum ac sapien
					rhoncus, pharetra ligula sit amet, imperdiet nisi. Maecenas
					convallis dignissim metus, aliquet consectetur nisl ornare id.
					Suspendisse scelerisque neque sit amet cursus venenatis. Ut et
					placerat libero.</p>
				<p>Suspendisse sit amet nibh massa. Pellentesque id sem leo.
					Fusce congue orci eu convallis vehicula. Donec lorem dolor,
					placerat et fermentum in, bibendum et nulla. Fusce sit amet dolor
					vestibulum, scelerisque enim sed, tincidunt ante. Proin porta
					tristique ipsum. Mauris eu tortor elementum, tempus velit vel,
					fermentum magna. Morbi posuere diam velit. Vestibulum ornare, nisi
					at finibus sodales, nunc sapien tempus tellus, sit amet ultrices
					tortor libero sed purus. Nulla consectetur sed enim eu finibus.
					Mauris imperdiet convallis tellus a scelerisque. Cras aliquet eget
					urna ut dignissim. Duis interdum mattis ornare. Vestibulum ante
					ipsum primis in faucibus orci luctus et ultrices posuere cubilia
					Curae; Nulla sodales tellus quis viverra lobortis.</p>
			</div>
		</div>
	</div>

<jsp:include page="rodape.jsp" />