
package com.paraiso.model;

public class Station {
    private String id_station;
    private String id_line;
    private String commercial_name;
    private float build_percentage;
    private String neighborhood_name;
    private String municipality_name;
    private int amount_of_entrances;

    public Station() {
    }

    public Station(String id_station) {
        this.id_station = id_station;
    }

    
    
    public Station(String id_station, String id_line, String commercial_name, float build_percentage, String neighborhood_name, String municipality_name, int amount_of_entrances) {
        this.id_station = id_station;
        this.id_line = id_line;
        this.commercial_name = commercial_name;
        this.build_percentage = build_percentage;
        this.neighborhood_name = neighborhood_name;
        this.municipality_name = municipality_name;
        this.amount_of_entrances = amount_of_entrances;
    }

    public String getId_station() {
        return id_station;
    }

    public void setId_station(String id_station) {
        this.id_station = id_station;
    }

    public String getId_line() {
        return id_line;
    }

    public void setId_line(String id_line) {
        this.id_line = id_line;
    }

    public String getCommercial_name() {
        return commercial_name;
    }

    public void setCommercial_name(String commercial_name) {
        this.commercial_name = commercial_name;
    }

    public float getBuild_percentage() {
        return build_percentage;
    }

    public void setBuild_percentage(float build_percentage) {
        this.build_percentage = build_percentage;
    }

    public String getNeighborhood_name() {
        return neighborhood_name;
    }

    public void setNeighborhood_name(String neighborhood_name) {
        this.neighborhood_name = neighborhood_name;
    }

    public String getMunicipality_name() {
        return municipality_name;
    }

    public void setMunicipality_name(String municipality_name) {
        this.municipality_name = municipality_name;
    }

    public int getAmount_of_entrances() {
        return amount_of_entrances;
    }

    public void setAmount_of_entrances(int amount_of_entrances) {
        this.amount_of_entrances = amount_of_entrances;
    }

    @Override
    public String toString() {
        return "Station{" + "id_station=" + id_station + ", id_line=" + id_line + ", commercial_name=" + commercial_name + ", build_percentage=" + build_percentage + ", neighborhood_name=" + neighborhood_name + ", municipality_name=" + municipality_name + ", amount_of_entrances=" + amount_of_entrances + '}';
    }

    
    
    
}
