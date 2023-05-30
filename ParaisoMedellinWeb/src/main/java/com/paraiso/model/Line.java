
package com.paraiso.model;

public class Line {
    private String id_line;
    private String official_name;
    private float status_percentage;
    private float length_in_km;
    private String type;
    private int amount_of_stations;

    public Line() {
    }

    public Line(String id_line, String official_name, float status_percentage, float length_in_km, String type, int amount_of_stations) {
        this.id_line = id_line;
        this.official_name = official_name;
        this.status_percentage = status_percentage;
        this.length_in_km = length_in_km;
        this.type = type;
        this.amount_of_stations = amount_of_stations;
    }

    public String getId_line() {
        return id_line;
    }

    public void setId_line(String id_line) {
        this.id_line = id_line;
    }

    public String getOfficial_name() {
        return official_name;
    }

    public void setOfficial_name(String official_name) {
        this.official_name = official_name;
    }

    public float getStatus_percentage() {
        return status_percentage;
    }

    public void setStatus_percentage(float status_percentage) {
        this.status_percentage = status_percentage;
    }

    public float getLength_in_km() {
        return length_in_km;
    }

    public void setLength_in_km(float length_in_km) {
        this.length_in_km = length_in_km;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getAmount_of_stations() {
        return amount_of_stations;
    }

    public void setAmount_of_stations(int amount_of_stations) {
        this.amount_of_stations = amount_of_stations;
    }

    @Override
    public String toString() {
        return "Line{" + "id_line=" + id_line + ", official_name=" + official_name + ", status_percentage=" + status_percentage + ", length_in_km=" + length_in_km + ", type=" + type + ", amount_of_stations=" + amount_of_stations + '}';
    }
    
    
    
}
