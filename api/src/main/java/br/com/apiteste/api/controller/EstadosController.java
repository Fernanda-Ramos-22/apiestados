package br.com.apiteste.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



import br.com.apiteste.api.service.EstadosService;

@CrossOrigin("*")
@RestController
@RequestMapping
public class EstadosController {

	@Autowired
	private EstadosService estadosService;

	@GetMapping("/estados")
	public ResponseEntity<List<String>> readAll() {

		List<String> list = estadosService.readAllEstados();
		return ResponseEntity.ok().body(list);

	}

}
