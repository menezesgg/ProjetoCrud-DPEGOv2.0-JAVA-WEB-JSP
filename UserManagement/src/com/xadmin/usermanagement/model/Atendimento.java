package com.xadmin.usermanagement.model;

public class Atendimento {
	
	private String defensor;
	private int id;
	private String resumo;
	private int id_user;
	
	
	
	public Atendimento(int id_user, String defensor , String resumo) {
		this.id_user = id_user;
		this.defensor = defensor;
		this.resumo = resumo;
	}
	
	public String getDefensor() {
		return this.defensor;
	}
	public void setDefensor(String defensor) {
		this.defensor = defensor;
	}
	public int getId() {
		return this.id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getResumo() {
		return this.resumo;
	}
	public void setResumo(String resumo) {
		this.resumo = resumo;
	}

	public int getId_user() {
		return this.id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	
	

}
