package com.example.servicioaulas;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class AulaController {

    private final AulaRepository aulaRepository;

    public AulaController(AulaRepository aulaRepository) {
        this.aulaRepository = aulaRepository;
    }

    @GetMapping("/aulas")
    public List<Aula> getAulas() {
        return aulaRepository.findAll();
    }
}
