<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="cabecalho.jsp" >
	<jsp:param value="Cadastro Usuário | Duelo de Gigantes" name="titulo"/>
	<jsp:param value="active" name="uactive"/>
</jsp:include>

<jsp:include page="introducao.jsp" >
	<jsp:param value="Novo Usuário" name="introducao"/>
	<jsp:param value="Cadastre-se e faça parte do universo de Duelo de Gigantes" name="texto"/>
	<jsp:param value="Já sou cadastrado. Efetuar login" name="botao"/>
	<jsp:param value="usuario?acao=login" name="destino"/>
</jsp:include>

		<div class="row marketing">
			<form action="usuario" method="get">
			<input type="hidden" name="acao" value="salvar">
			<div class="col-lg-12">
				<div class="form-group">
					<label for="nome">Nome</label>
					<input name="nome" type="text" class="form-control" id="nome" placeholder="Nome Completo">
				</div>
				<div class="form-group">
					<label for="email">Email</label>
					<input name="email" type="text" class="form-control" id="email" placeholder="E-mail">
				</div>
				<div class="form-group">
					<label for="senha">Senha</label>
					<input name="senha" type="password" class="form-control" id="senha" placeholder="Senha">
				</div>
				<div class="form-group">
					<label for="confirmacao">Confirmar Senha</label>
					<input name="confirmacao" type="password" class="form-control" id="confirmacao" placeholder="Confirmação de senha">
				</div>
			</div>

			<p class="center action-bar">
				<a class="btn btn-lg btn-default" href="duelo" role="button">Cancelar</a>
				<input type="submit" value="Cadastrar" class="btn btn-lg btn-info" role="button" />
			</p>
			</form>
		</div>
		
	</div>

<jsp:include page="rodape.jsp" />