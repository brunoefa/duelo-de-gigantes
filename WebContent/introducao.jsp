<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="jumbotron">
	<h1>${param.introducao}</h1>
	<p class="lead">${param.texto}</p>
	<p>
		<a class="btn btn-lg btn-success" href="${param.destino}" role="button">${param.botao}</a>
	</p>
</div>