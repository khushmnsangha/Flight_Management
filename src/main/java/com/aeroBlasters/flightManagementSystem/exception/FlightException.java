package com.aeroBlasters.flightManagementSystem.exception;

public class FlightException extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public static long getSerialversionuid() {
        return serialVersionUID;
    }

    public FlightException(String message) {
        super(message);
    }
}