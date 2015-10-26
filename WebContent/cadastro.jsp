<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="cabecalho.jsp" >
	<jsp:param value="Cadastro | Duelo de Gigantes" name="titulo"/>
	<jsp:param value="active" name="cactive"/>
</jsp:include>

<jsp:include page="introducao.jsp" >
	<jsp:param value="Novo Duelo" name="introducao"/>
	<jsp:param value="Cadastre oponentes para duelar em uma batalha épica, online, feroz e sangrenta. Ou não!" name="texto"/>
	<jsp:param value="Chega de cadastro, quero duelar!" name="botao"/>
	<jsp:param value="duelo" name="destino"/>
</jsp:include>

		<div class="row marketing">
			<form action="duelo" method="get">
			<input type="hidden" name="acao" value="salvar">
			<div class="col-lg-6">
				<div class="center">
					<img data-src="holder.js/140x140" id="avatar1" class="img-circle" alt="Oponente 1" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMTQwIiBoZWlnaHQ9IjE0MCIgdmlld0JveD0iMCAwIDE0MCAxNDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjwhLS0KU291cmNlIFVSTDogaG9sZGVyLmpzLzE0MHgxNDAKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNTA4MjMzMGU4NSB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE1MDgyMzMwZTg1Ij48cmVjdCB3aWR0aD0iMTQwIiBoZWlnaHQ9IjE0MCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9IjQ1LjUiIHk9Ijc0LjUiPjE0MHgxNDA8L3RleHQ+PC9nPjwvZz48L3N2Zz4=" data-holder-rendered="true" style="width: 140px; height: 140px;">
				</div>	
				<h2 class="center">Oponente 1</h2>
				<div class="form-group">
					<label for="nome1">Nome</label>
					<input name="nome1" type="text" class="form-control" id="nome1" placeholder="Oponente 1">
				</div>
				<div class="form-group">
					<label for="imagem1">Imagem</label>
					<input name="imagem1" type="text" class="form-control" id="imagem1" placeholder="Url da Imagem">
				</div>
			</div>

			<div class="col-lg-6">
				<div class="center">
					<img data-src="holder.js/140x140" id="avatar2" class="img-circle" alt="140x140" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMTQwIiBoZWlnaHQ9IjE0MCIgdmlld0JveD0iMCAwIDE0MCAxNDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjwhLS0KU291cmNlIFVSTDogaG9sZGVyLmpzLzE0MHgxNDAKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNTA4MjMzMGU4NSB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE1MDgyMzMwZTg1Ij48cmVjdCB3aWR0aD0iMTQwIiBoZWlnaHQ9IjE0MCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9IjQ1LjUiIHk9Ijc0LjUiPjE0MHgxNDA8L3RleHQ+PC9nPjwvZz48L3N2Zz4=" data-holder-rendered="true" style="width: 140px; height: 140px;">
				</div>
				<h2 class="center">Oponente 2</h2>
				<div class="form-group">
					<label for="nome2">Nome</label>
					<input name="nome2" type="text" class="form-control" id="nome2" placeholder="Oponente 2">
				</div>
				<div class="form-group">
					<label for="imagem2">Imagem</label>
					<input name="imagem2" type="text" class="form-control" id="imagem2" placeholder="Url da Imagem">
				</div>
			</div>
			
			<p class="center action-bar">
				<a class="btn btn-lg btn-default" href="duelo" role="button">Cancelar</a>
				<input type="submit" value="Salvar" class="btn btn-lg btn-info" role="button" />
			</p>
			</form>
		</div>

	</div>

<jsp:include page="rodape.jsp" />