package br.org.generation.objetivos.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;

@RestController
@RequestMapping("/objetivos")
public class ObjetivosController {
	
	@GetMapping
	public String Objetivos() {
		return "Meu objetivo de aprendizagem da semana: Aprender a utilizar Spring Boot";
	}

}
