package com.senai.controle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/inicio")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public IndexServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String string1 = request.getParameter("n1");
		String string2 = request.getParameter("n2");
		String op = request.getParameter("op");

		Double n1 = Double.parseDouble(string1);
		Double n2 = Double.parseDouble(string2);
		
		Double resultado = 0.0;
		
		switch (op) {
		case "+": resultado = n1 + n2; break;
		case "-": resultado = n1 - n2; break;
		case "*": resultado = n1 * n2; break;
		case "/": resultado = n1 / n2; break;
		}
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print("<H1>" + n1 + " "+ op +" " + n2 + " = " + resultado + "</H1>");
		out.print("<a href='html/calc.html'> Voltar </a>");
		out.close();
	}
}
