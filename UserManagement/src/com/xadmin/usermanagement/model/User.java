package com.xadmin.usermanagement.model;

/**
 * User.java
 * This is a model class represents a User entity
 * @author Ramesh Fadatare
 *
 */
public class User {
	protected int id;
	protected String nome;
	protected String cpf;
	protected String nascimento;
	protected String mae;
	protected String pai;
	protected String genero;
	protected String telefone;
	protected String celular;
	protected String email;
	protected String escolaridade;
	protected String civil;
	protected String cep;
	protected String lagradouro;
	protected String numero;
	protected String complemento;
	protected String bairro;
	protected String uf;
	protected String membros;
	protected String ativos;
	protected String individual;
	protected String familiar;
	protected String tipo;

	
	
	public User() {
	}
	
	public User(String nome, String cpf, String nascimento, String mae, String pai, String genero, String telefone, String celular, String email, String escolaridade, String civil, String cep,  String lagradouro,  String numero,  String complemento,  String bairro,  String uf,  String membros,  String ativos,  String individual,  String familiar,  String tipo) {
		super();
		this.nome = nome;
		this.cpf = cpf;
		this.nascimento = nascimento;
		this.mae = mae;
		this.pai = pai;
		this.genero = genero;
		this.telefone = telefone;
		this.celular = celular;
		this.email = email;
		this.escolaridade = escolaridade;
		this.civil = civil;
		this.cep = cep;
		this.lagradouro = lagradouro;
		this.numero = numero;
		this.complemento = complemento;
		this.bairro = bairro;
		this.uf = uf;
		this.membros = membros;
		this.ativos = ativos;
		this.individual = individual;
		this.familiar = familiar;
		this.tipo = tipo;
		
		
	}

	public User(int id, String nome, String cpf, String nascimento, String mae, String pai, String genero, String telefone, String celular, String email, String escolaridade, String civil, String cep,  String lagradouro,  String numero,  String complemento,  String bairro,  String uf,  String membros,  String ativos,  String individual,  String familiar,  String tipo) {
		super();
		this.id = id;
		this.nome = nome;
		this.cpf = cpf;
		this.nascimento = nascimento;
		this.mae = mae;
		this.pai = pai;
		this.genero = genero;
		this.telefone = telefone;
		this.celular = celular;
		this.email = email;
		this.escolaridade = escolaridade;
		this.civil = civil;
		this.cep = cep;
		this.lagradouro = lagradouro;
		this.numero = numero;
		this.complemento = complemento;
		this.bairro = bairro;
		this.uf = uf;
		this.membros = membros;
		this.ativos = ativos;
		this.individual = individual;
		this.familiar = familiar;
		this.tipo = tipo;
		
	}
	

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getNascimento() {
		return nascimento;
	}
	public void setNascimento(String nascimento) {
		this.nascimento = nascimento;
	}
	public String getMae() {
		return mae;
	}
	public void setMae(String mae) {
		this.mae = mae;
	}
	public String getPai() {
		return pai;
	}
	public void setPai(String pai) {
		this.pai = pai;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEscolaridade() {
		return escolaridade;
	}
	public void setEscolaridade(String escolaridade) {
		this.escolaridade = escolaridade;
	}
	public String getCivil() {
		return civil;
	}
	public void setCivil(String civil) {
		this.civil = civil;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	
	public String getLagradouro() {
		return lagradouro;
	}
	public void setLagradouro(String lagradouro) {
		this.lagradouro = lagradouro;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero= numero;
	}

	public String getComplemento() {
		return complemento;
	}
	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getUf() {
		return uf;
	}
	public void setUf(String uf) {
		this. uf = uf;
	}

	public String getMembros() {
		return membros;
	}
	public void setMembros(String membros) {
		this.membros = membros;
	}

	public String getAtivos() {
		return ativos;
	}
	public void setAtivos(String ativos) {
		this.ativos = ativos;
	}

	public String getIndividual() {
		return individual;
	}
	public void seIndividual(String individual) {
		this. individual = individual;
	}

	public String getFamiliar() {
		return familiar;
	}
	public void setFamiliar(String familiar) {
		this.familiar = familiar;
	}

	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
}
