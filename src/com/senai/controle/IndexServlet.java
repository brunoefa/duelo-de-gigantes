package com.senai.controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/inicio")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private Double n1, n2, resultado;
	private String op;
	
    public IndexServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		capturarParametros(request);
		realizarOperacao();
		encaminharRequisicao(request, response);
	}
	
	private void capturarParametros(HttpServletRequest request) throws ServletException, IOException {
		String string1 = request.getParameter("n1");
		this.n1 = Double.parseDouble(string1);
		
		String string2 = request.getParameter("n2");
		this.n2 = Double.parseDouble(string2);
		
		this.op = request.getParameter("op");
	}
	
	private void realizarOperacao() {
		this.resultado = 0.0;
		switch (this.op) {
		case "+": this.resultado = this.n1 + this.n2; break;
		case "-": this.resultado = this.n1 - this.n2; break;
		case "*": this.resultado = this.n1 * this.n2; break;
		case "/": this.resultado = this.n1 / this.n2; break;
		}
	}
	
	private void encaminharRequisicao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("n1", this.n1);
		request.setAttribute("n2", this.n2);
		request.setAttribute("resultado", this.resultado);
		request.setAttribute("op", this.op);
		RequestDispatcher rd = request.getRequestDispatcher("html/calc.jsp");
		rd.forward(request, response);
	}
}



















