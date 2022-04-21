package br.com.apiteste.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



import br.com.apiteste.api.service.PopulacaoService;

@CrossOrigin("*")
@RestController
@RequestMapping
public class PopulacaoController {
	
	@Autowired
	private PopulacaoService populacaoService;
	
	
	@GetMapping("/populacao/sc")
	public ResponseEntity<Object> findByUf() {
		Object obj = populacaoService.findByUf();
		return ResponseEntity.ok().body(obj);
	}
	
	
	
	
}
