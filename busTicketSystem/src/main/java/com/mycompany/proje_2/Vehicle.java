
package com.mycompany.proje_2;

import java.util.List;
import java.util.ArrayList;


abstract class Vehicle{
    
    String firma;
    String yakit;
    int kmUcret;
    int kapasite;
    public static List<Vehicle> araclar = new ArrayList<>();
  
    
    public String getFirma() {
        return firma;
    }

    public void setFirma(String firma) {
        this.firma = firma;
    }

    public String getYakit() {
        return yakit;
    }

    public void setYakit(String yakit) {
        this.yakit = yakit;
    }

    public int getKmUcret() {
        return kmUcret;
    }

    public void setKmUcret(int kmUcret) {
        this.kmUcret = kmUcret;
    }

    public int getKapasite() {
        return kapasite;
    }

    public void setKapasite(int kapasite) {
        this.kapasite = kapasite;
    }
    
    public Vehicle(String firma, String yakit,int kmUcret, int kapasite){
        this.firma=firma;
        this.yakit=yakit;
        this.kapasite=kapasite;
        this.kmUcret=kmUcret;
    }
    abstract void CalculateFuelCost();
}

class Bus extends Vehicle{
    public Bus(String firma,String yakit,int kmUcret, int kapasite){
        super(firma,yakit,kmUcret,kapasite);
    }
    @Override
    void CalculateFuelCost() {
        System.out.println("Otobüsün yakıt maliyeti hesaplandı.");
    }
}


class Train extends Vehicle {
    public Train(String firma,String yakit,int kmUcret, int kapasite){
        super(firma,yakit,kmUcret,kapasite);
    }

    @Override
    void CalculateFuelCost() {
        System.out.println("Trenin yakıt maliyeti hesaplandı.");
    }
}



class Airplane extends Vehicle {
    public Airplane(String firma,String yakit,int kmUcret, int kapasite){
        super(firma,yakit,kmUcret,kapasite);
    }

    @Override
    void CalculateFuelCost() {
        System.out.println("Uçağın yakıt maliyeti hesaplandı.");
    }
}
