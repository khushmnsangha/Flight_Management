package com.aeroBlasters.flightManagementSystem.exception;

public class TicketException extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public static long getSerialversionuid() {
        return serialVersionUID;
    }

    public TicketException(String message) {
        super(message);
    }
}