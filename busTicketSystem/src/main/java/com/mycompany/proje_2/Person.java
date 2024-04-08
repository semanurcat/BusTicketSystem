package com.mycompany.proje_2;

abstract class Person {

    String isimSoyad;

    public Person(String isimSoyad) {
        this.isimSoyad = isimSoyad;
    }
}

class Personel extends Person {
    
    String firma;
    String pozisyon;
    int ucret;

    public Personel(String isimSoyad,String firma,String pozisyon,int ucret) {
        super(isimSoyad);
        this.firma = firma;
        this.pozisyon = pozisyon;
        this.ucret = ucret;
    }
}

class Passenger extends Person {

    public static int koltuk;
    public static long tcno;

    public Passenger(String isimSoyad, int koltuk, long tcno) {
        super(isimSoyad);
        this.koltuk = koltuk;
        this.tcno = tcno;

    }
}
