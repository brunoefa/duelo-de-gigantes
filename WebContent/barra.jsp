<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div>
	<div style="float: left;">
		<img data-src="holder.js/100x100" class="img-circle"
			src="${param.imagem}" data-holder-rendered="true"
			style="width: 100px; height: 100px;">
	</div>
	<div class="center ${param.classe}" style="width: ${param.largura}px">
		<fmt:formatNumber type="number" maxFractionDigits="0" value="${param.porcentagem}" />%
	</div>
</div>