package br.com.challengeibm.model.entities;

public class Aluno {

	private int cod;
	private String nome;
	private String sobrenome;
	private String cpf;
	private String email;
	private String rm;
	private String senha;
	private String telefone;

	private String cep;
	private String logr;
	private String numero;
	private String bairro;
	private String cidade;
	private String uf;
	
	
	
	
	public Aluno(int cod, String nome, String sobrenome, String cpf, String email, String rm, String senha,
			String telefone, String cep, String logr, String numero, String bairro, String cidade, String uf) {
		super();
		this.cod = cod;
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.cpf = cpf;
		this.email = email;
		this.rm = rm;
		this.senha = senha;
		this.telefone = telefone;
		this.cep = cep;
		this.logr = logr;
		this.numero = numero;
		this.bairro = bairro;
		this.cidade = cidade;
		this.uf = uf;
	}

	public Aluno() {
	}

	public String getLogr() {
		return logr;
	}

	public void setLogr(String logr) {
		this.logr = logr;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public int getCod() {
		return cod;
	}

	public void setCod(int cod) {
		this.cod = cod;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getRm() {
		return rm;
	}

	public void setRm(String rm) {
		this.rm = rm;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
}
