package com.aeroBlasters.flightManagementSystem.exception;

public class RouteException extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public static long getSerialversionuid() {
        return serialVersionUID;
    }

    public RouteException(String message) {
        super(message);
    }
}