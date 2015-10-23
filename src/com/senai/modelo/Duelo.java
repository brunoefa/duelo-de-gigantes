package com.senai.modelo;

public class Duelo {
	
	private Integer id;
	private String nome1;
	private String nome2;
	private String imagem1;
	private String imagem2;
	private Integer vitorias1;
	private Integer vitorias2;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNome1() {
		return nome1;
	}
	public void setNome1(String nome1) {
		this.nome1 = nome1;
	}
	public String getNome2() {
		return nome2;
	}
	public void setNome2(String nome2) {
		this.nome2 = nome2;
	}
	public String getImagem1() {
		return imagem1;
	}
	public void setImagem1(String imagem1) {
		this.imagem1 = imagem1;
	}
	public String getImagem2() {
		return imagem2;
	}
	public void setImagem2(String imagem2) {
		this.imagem2 = imagem2;
	}
	public Integer getVitorias1() {
		return vitorias1;
	}
	public void setVitorias1(Integer vitorias1) {
		this.vitorias1 = vitorias1;
	}
	public Integer getVitorias2() {
		return vitorias2;
	}
	public void setVitorias2(Integer vitorias2) {
		this.vitorias2 = vitorias2;
	}
	
	@Override
	public String toString() {
		return nome1 + "\n" + 
			   imagem1 + "\n" +
			   nome2 + "\n" +
			   imagem2;
	}
}
