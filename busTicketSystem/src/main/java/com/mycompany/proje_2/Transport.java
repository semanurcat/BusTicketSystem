package com.mycompany.proje_2;

class Transport{
    Firma firma;
    Vehicle vehicle;
    Trip trip;
    Reservation reservation;


    public Transport(Firma firma, Vehicle vehicle, Trip trip, Reservation reservation) {
        this.firma = firma;
        this.vehicle = vehicle;
        this.trip = trip;
        this.reservation = reservation;
    }
}
