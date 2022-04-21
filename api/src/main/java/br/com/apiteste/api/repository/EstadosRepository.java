package br.com.apiteste.api.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import br.com.apiteste.api.model.Estados;

@Repository
public interface EstadosRepository extends JpaRepository<Estados, Integer> {
	
	@Query(value = "select a.nome,a.uf,b.populacao from Estados a, Populacao b where a.estados_id = b.id", nativeQuery = true)
	List<String> findByUf();
	
	
	
	

}
