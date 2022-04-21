package br.com.apiteste.api.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;


import br.com.apiteste.api.repository.EstadosRepository;



@Service
public class EstadosService {
	
	@Autowired
	private EstadosRepository estadosRepository;
	
	
	public List<String> readAllEstados() {
		
		List<String> list = estadosRepository.findByUf();
		System.out.println(list);
		return list;
		
	}
	

	
	


}
