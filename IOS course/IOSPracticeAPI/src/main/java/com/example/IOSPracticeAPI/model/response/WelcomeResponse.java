package com.example.IOSPracticeAPI.model.response;

public class WelcomeResponse {
    private String message;

    public WelcomeResponse() {
    }

    public WelcomeResponse(String message) {
        this.message = message;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
