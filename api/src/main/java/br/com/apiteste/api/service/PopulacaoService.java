package br.com.apiteste.api.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.apiteste.api.model.Populacao;
import br.com.apiteste.api.repository.PopulacaoRepository;

@Service
public class PopulacaoService {

	@Autowired
	private PopulacaoRepository populacaoRepository;

	public Map<Integer, String> findByUf() {
		Optional<Populacao> obj = populacaoRepository.findByUf();
		
		Map<Integer, String> hosts = new HashMap<>();
		hosts.put(1, obj.get().getPopulacao());
		hosts.put(2, obj.get().getUf());
		
		return hosts;
	}

	public List<Populacao> readAllPop() {
		List<Populacao> list = populacaoRepository.findAll();
		return list;
	}

}
