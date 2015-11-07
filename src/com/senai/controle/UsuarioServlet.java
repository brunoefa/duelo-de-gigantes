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
		} else if ("login".equals(acao)) {
			mostrarLogin(request, response);
		} else if ("logar".equals(acao)) {
			efetuarLogin(request, response);
		} else {
			mostrarCadastro(request, response);
		}
	}
	
	private void capturarParametros(HttpServletRequest request) throws ServletException, IOException {
		Usuario u = new Usuario();
		
		String sid = request.getParameter("id");
		if (sid != null) {
			u.setId(Integer.parseInt(sid));
		}
		u.setNome(request.getParameter("nome"));
		u.setEmail(request.getParameter("email"));
		u.setSenha(request.getParameter("senha"));
		u.setConfirmacaoDeSenha(request.getParameter("confirmacao"));
		this.usuario = u;
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
	
	private void efetuarLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		capturarParametros(request);
		try {
			Usuario usuarioBanco = dao.buscarUsuario(this.usuario.getEmail());
			validarLogin(this.usuario, usuarioBanco);
			request.setAttribute("sucesso", "Login efetuado com sucesso!");
		} catch (UsuarioException e) {
			request.setAttribute("erro", e.getMessage());
		} catch (Exception e) {
			request.setAttribute("erro", "Problema ao efetuar login =(");
		}
		encaminharRequisicao("login.jsp", request, response);
	}	
	
	private void validarLogin(Usuario usuarioLogin, Usuario usuarioBanco) {
		if (usuarioBanco == null) {
			throw new UsuarioException("Usu�rio n�o cadastrado");
		}
		
		if (!usuarioBanco.getSenha().equals(usuarioLogin.getSenha())) {
			throw new UsuarioException("Usu�rio ou senha inv�lidos");
		}
	}

	private void mostrarLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		encaminharRequisicao("login.jsp", request, response);
	}
	
	private void validarUsuario(Usuario usuario) throws UsuarioException {
		if ("".equals(usuario.getNome().trim())  ||
			"".equals(usuario.getEmail().trim()) ||
			"".equals(usuario.getSenha().trim())) {
			throw new UsuarioException("Todos os campos devem ser preenchidos.");
		}
		
		if (!usuario.getSenha().trim().equals(usuario.getConfirmacaoDeSenha().trim())) {
			throw new UsuarioException("A senha deve ser identica a confirma��o de senha.");
		}
		
		if (usuario.getSenha().trim().length() < 6) {
			throw new UsuarioException("A senha deve conter no m�nimo 6 d�gitos.");
		}
		
		String regex = "([0-9].*[a-zA-Z])|([a-zA-Z].*[0-9])";
		if (!usuario.getSenha().matches(regex)) {
			throw new UsuarioException("A senha deve conter n�meros e letras.");
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
















