package com.example.IOSPracticeAPI.controller;


import com.example.IOSPracticeAPI.model.request.LoginRequest;
import com.example.IOSPracticeAPI.model.response.LoginResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.example.IOSPracticeAPI.model.error.Error;


@RestController
@RequestMapping("/api")
public class LoginController {

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody LoginRequest request){

        //validation
        if(request.getUsername() == null || request.getUsername().isEmpty()
                || request.getPassword() == null || request.getPassword().isEmpty()){

            Error error = new Error();
            error.setCode("BAD_REQUEST");
            error.setMessage("Username and Password are required");

            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(error);
        }

        String msg = "Login Successful for " + request.getUsername();
        LoginResponse response = new LoginResponse(msg);

        return ResponseEntity.ok(response);
    }
}