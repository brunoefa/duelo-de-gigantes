package com.senai.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.senai.exception.UsuarioException;
import com.senai.modelo.Usuario;

public class UsuarioDao {
	private Connection conexao;

	public UsuarioDao() {
		this.conexao = new ConnectionFactory().getConnection();
	}
	
	public void salvar(Usuario usuario) {
		String sql = "INSERT INTO usuario (nome, email, senha) VALUES (?,?,?)";
		try {
			PreparedStatement stm = conexao.prepareStatement(sql);
			
			stm.setString(1, usuario.getNome());
			stm.setString(2, usuario.getEmail());
			stm.setString(3, usuario.getSenha());
			
			stm.execute();
			stm.close();
			
		} catch (SQLException e) {
			if (e.getMessage().contains("email_UNIQUE")) {
				throw new UsuarioException("Este email já está em uso no sistema");
			}
			System.out.println(e.getMessage());
			throw new RuntimeException();
		}
	}

	public Usuario buscarUsuario(String email) {
		Usuario u = null;
		String sql = "SELECT * FROM usuario WHERE email = ?";
		try {
			PreparedStatement stm = conexao.prepareStatement(sql);
			stm.setString(1, email);
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				u = new Usuario();
				u = preencherUsuario(rs);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new RuntimeException();
		}		
		return u;
	}

	private Usuario preencherUsuario(ResultSet rs)  throws SQLException {
		Usuario u = new Usuario();
		u.setId(rs.getInt("id"));
		u.setNome(rs.getString("nome"));
		u.setEmail(rs.getString("email"));
		u.setSenha(rs.getString("senha"));
		return u;
	}
}
