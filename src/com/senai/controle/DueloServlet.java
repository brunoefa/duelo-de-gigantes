package com.senai.controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.senai.dao.DueloDao;
import com.senai.modelo.Duelo;

@WebServlet("/duelo")
public class DueloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Duelo duelo;
	private DueloDao dao;
       
    public DueloServlet() {
    	dao = new DueloDao();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		if ("salvar".equals(acao)) {
			salvarDuelo(request, response);
		}else if ("cadastrar".equals(acao)) {
			mostrarCadastro(request, response);
		}else if ("votar".equals(acao)) {
			votarDuelo(request, response);
		} else {
			mostrarDuelo(request, response);
		}
	}
	
	private void capturarParametros(HttpServletRequest request) throws ServletException, IOException {
		Duelo d = new Duelo();
		
		String sid = request.getParameter("id");
		if (sid != null) {
			d.setId(Integer.parseInt(sid));
		}
		d.setNome1(request.getParameter("nome1"));
		d.setNome2(request.getParameter("nome2"));
		d.setImagem1(request.getParameter("imagem1"));
		d.setImagem2(request.getParameter("imagem2"));
		this.duelo = d;
	}
	
	private void salvarDuelo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		capturarParametros(request);
		try {
			dao.salvar(this.duelo);
			request.setAttribute("sucesso", "Duelo salvo com sucesso =)");
		} catch (Exception e) {
			request.setAttribute("erro", "Problema ao salvar Duelo =(");
		}
		encaminharRequisicao("cadastro.jsp", request, response);
	}
	
	private void mostrarCadastro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		encaminharRequisicao("cadastro.jsp", request, response);
	}
	
	private void mostrarDuelo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			this.duelo = dao.buscarDueloRandomico();
			request.setAttribute("duelo", this.duelo);
		} catch (Exception e) {
			request.setAttribute("erro", "Erro ao exibir duelo =(");
		}
		encaminharRequisicao("duelo.jsp", request, response);
	}
	
	private void votarDuelo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		capturarParametros(request);
		String oponente = request.getParameter("oponente");
		try {
			Duelo d = dao.registrarVoto(this.duelo.getId(), oponente);
			request.setAttribute("duelo", d);
			request.setAttribute("sucesso", "Voto registrado com sucesso =)");
		} catch (Exception e) {
			request.setAttribute("erro", "Problema ao registrar voto =(");
		}
		encaminharRequisicao("resultado.jsp", request, response);
	}
	
	private void encaminharRequisicao(String destino, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}

}
















