<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="cabecalho.jsp" >
	<jsp:param value="Login | Duelo de Gigantes" name="titulo"/>
	<jsp:param value="active" name="lactive"/>
</jsp:include>

<jsp:include page="introducao.jsp" >
	<jsp:param value="Efetuar Login" name="introducao"/>
	<jsp:param value="Faça login para entrar no universo de Duelos" name="texto"/>
	<jsp:param value="Não é cadastrado? Cadastre-se!" name="botao"/>
	<jsp:param value="usuario" name="destino"/>
</jsp:include>

		<div class="row marketing">
			<form action="usuario" method="get">
			<input type="hidden" name="acao" value="logar">
			<div class="col-lg-12">
				<div class="form-group">
					<label for="email">Email</label>
					<input name="email" type="text" class="form-control" id="email" placeholder="E-mail">
				</div>
				<div class="form-group">
					<label for="senha">Senha</label>
					<input name="senha" type="password" class="form-control" id="senha" placeholder="Senha">
				</div>
			</div>

			<p class="center action-bar">
				<a class="btn btn-lg btn-default" href="duelo" role="button">Cancelar</a>
				<input type="submit" value="Entrar" class="btn btn-lg btn-info" role="button" />
			</p>
			</form>
		</div>
		
	</div>

<jsp:include page="rodape.jsp" />