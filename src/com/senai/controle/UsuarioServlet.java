package com.senai.controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.senai.dao.UsuarioDao;
import com.senai.exception.UsuarioException;
import com.senai.modelo.Usuario;

@WebServlet("/usuario")
public class UsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Usuario usuario;
	private UsuarioDao dao;
       
    public UsuarioServlet() {
    	dao = new UsuarioDao();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		if ("salvar".equals(acao)) {
			salvarUsuario(request, response);
		} else {
			mostrarCadastro(request, response);
		}
	}
	
	private void capturarParametros(HttpServletRequest request) throws ServletException, IOException {
		Usuario d = new Usuario();
		
		String sid = request.getParameter("id");
		if (sid != null) {
			d.setId(Integer.parseInt(sid));
		}
		d.setNome(request.getParameter("nome"));
		d.setEmail(request.getParameter("email"));
		d.setSenha(request.getParameter("senha"));
		d.setConfirmacaoDeSenha(request.getParameter("confirmacao"));
		this.usuario = d;
	}
	
	private void salvarUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		capturarParametros(request);
		try {
			validarUsuario(this.usuario);
			dao.salvar(this.usuario);
			request.setAttribute("sucesso", "Usuario salvo com sucesso =)");
		} catch (UsuarioException e) {
			request.setAttribute("erro", e.getMessage());
		} catch (Exception e) {
			request.setAttribute("erro", "Problema ao salvar Usuario =(");
		}
		encaminharRequisicao("usuario.jsp", request, response);
	}
	
	private void validarUsuario(Usuario usuario) throws UsuarioException {
		if ("".equals(usuario.getNome().trim())  ||
			"".equals(usuario.getEmail().trim()) ||
			"".equals(usuario.getSenha().trim())) {
			throw new UsuarioException("Todos os campos devem ser preenchidos.");
		}
		
		if (!usuario.getSenha().trim().equals(usuario.getConfirmacaoDeSenha().trim())) {
			throw new UsuarioException("A senha deve ser identica a confirmação de senha.");
		}
		
		if (usuario.getSenha().trim().length() < 6) {
			throw new UsuarioException("A senha deve conter no mínimo 6 dígitos.");
		}
	}

	private void mostrarCadastro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		encaminharRequisicao("usuario.jsp", request, response);
	}
	
	private void encaminharRequisicao(String destino, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}

}
















