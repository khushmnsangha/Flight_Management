package com.aeroBlasters.flightManagementSystem.exception;

public class AirportException extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public static long getSerialversionuid() {
        return serialVersionUID;
    }

    public AirportException(String message) {
        super(message);
    }
}