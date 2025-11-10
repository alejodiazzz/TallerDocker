package com.example.servicioreportes;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ReporteController {

    @GetMapping("/reportes")
    public String getReportes() {
        return "Servicio de reportes funcionando!";
    }
}
