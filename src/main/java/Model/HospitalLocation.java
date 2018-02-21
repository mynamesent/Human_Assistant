/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.List;

/**
 *
 * @author Book
 */
public class HospitalLocation {
    private int id;
    private String name;
    private String address;
    private float lat;
    private float lng;
    private String type;

    public HospitalLocation() {
    }

    public HospitalLocation(int id, String name, String address, float lat, float lng, String type) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.lat = lat;
        this.lng = lng;
        this.type = type;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setLat(float lat) {
        this.lat = lat;
    }

    public void setLng(float lng) {
        this.lng = lng;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public float getLat() {
        return lat;
    }

    public float getLng() {
        return lng;
    }

    public String getType() {
        return type;
    }

    @Override
    public String toString() {
        return "HospitalLocation{" + "id=" + id + ", name=" + name + ", address=" + address + ", lat=" + lat + ", lng=" + lng + ", type=" + type + '}';
    }
    
    
    
    public static List<HospitalLocation> pullLocation(String param){
        
        
        
    }
}
