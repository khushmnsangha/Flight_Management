package com.aeroBlasters.flightManagementSystem.bean;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;
// import javax.validation.constraints.NotNull;

import org.hibernate.annotations.NotFound;

@Embeddable
public class TicketPassengerEmbed implements Serializable {
    @NotFound
    private Long ticketNumber;
    @NotFound
    private Integer serialNumber;

    public TicketPassengerEmbed() {
        super();
        // TODO Auto-generated constructor stub
    }

    public TicketPassengerEmbed(Long ticketNumber, Integer serialNumber) {
        super();
        this.ticketNumber = ticketNumber;
        this.serialNumber = serialNumber;
    }

    public Long getTicketNumber() {
        return ticketNumber;
    }

    public void setTicketNumber(Long ticketNumber) {
        this.ticketNumber = ticketNumber;
    }

    public Integer getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(Integer serialNumber) {
        this.serialNumber = serialNumber;
    }

    @Override
    public int hashCode() {
        return Objects.hash(serialNumber, ticketNumber);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        TicketPassengerEmbed other = (TicketPassengerEmbed) obj;
        return Objects.equals(serialNumber, other.serialNumber) && Objects.equals(ticketNumber, other.ticketNumber);
    }

}