package br.com.apiteste.api.model;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name = "estados")
public class Estados implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer estadosId;
	@Column(name = "nome")
	private String nome;
	@Column(name = "uf")
	private String uf;
	
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "estados")
	private Populacao populacao;
			
	public Estados() {
			
		
	}
		
	///construro dos campos sem o id
	public Estados(String nome, String uf, Populacao populacao) {
		super();
		this.nome = nome;
		this.uf = uf;
		this.populacao = populacao;
	}
		
	//getters and setters all
	public Integer getEstadosId() {
		return estadosId;
	}
	public void setEstadosId(Integer estadosId) {
		this.estadosId = estadosId;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getUf() {
		return uf;
	}
	public void setUf(String uf) {
		this.uf = uf;
	}
	public Populacao getPopulacao() {
		return populacao;
	}
	public void setPopulacao(Populacao populacao) {
		this.populacao = populacao;
	}




	@Override
	public int hashCode() {
		return Objects.hash(estadosId, nome, populacao, uf);
	}




	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Estados other = (Estados) obj;
		return Objects.equals(estadosId, other.estadosId) && Objects.equals(nome, other.nome)
				&& Objects.equals(populacao, other.populacao) && Objects.equals(uf, other.uf);
	}
	
	
	
	
		

}
