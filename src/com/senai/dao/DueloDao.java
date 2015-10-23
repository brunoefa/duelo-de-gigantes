package com.senai.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.senai.modelo.Duelo;

public class DueloDao {
	private Connection conexao;

	public DueloDao() {
		this.conexao = new ConnectionFactory().getConnection();
	}
	
	public void salvar(Duelo duelo) {
		String sql = "INSERT INTO duelo (nome1, imagem1, nome2, imagem2) VALUES (?,?,?,?)";
		try {
			PreparedStatement stm = conexao.prepareStatement(sql);
			
			stm.setString(1, duelo.getNome1());
			stm.setString(3, duelo.getNome2());
			stm.setString(2, duelo.getImagem1());
			stm.setString(4, duelo.getImagem2());
			
			stm.execute();
			stm.close();
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new RuntimeException();
		}
				
	}
	
}
