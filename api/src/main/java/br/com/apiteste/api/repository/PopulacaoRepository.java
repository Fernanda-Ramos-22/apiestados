package br.com.apiteste.api.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import br.com.apiteste.api.model.Populacao;

@Repository
public interface PopulacaoRepository extends JpaRepository<Populacao, Integer> {
	
	@Query(value = "SELECT * FROM Populacao  where uf = 'SC'", nativeQuery = true)
	Optional<Populacao> findByUf();
	
	

}
