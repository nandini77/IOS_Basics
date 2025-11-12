package com.example.IOSPracticeAPI.controller;

import com.example.IOSPracticeAPI.model.response.WelcomeResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class WelcomeController {

    @GetMapping("/welcome")
    public ResponseEntity<WelcomeResponse> getWelcomeMessage() {
        WelcomeResponse response = new WelcomeResponse("Welcome to the API");
        return ResponseEntity.ok(response);
    }
}
