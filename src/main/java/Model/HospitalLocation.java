/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

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
    
    public HospitalLocation(ResultSet rs) throws SQLException {
        id = rs.getInt("id");
        name = rs.getString("name");
        address = rs.getString("address");
        lat = rs.getFloat("lat");
        lng = rs.getFloat("lng");
        type = rs.getString("type");
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
    
    
    
    public static List<HospitalLocation> pullHospitalLocation() throws SQLException{
        
       List<HospitalLocation> hosLoList = null;
        HospitalLocation hosLo = null;
        Connection con = null;
        try{
            con = ConnectionBuilder.getMySqlCond();
            PreparedStatement pstm = con.prepareStatement("SELECT * FROM HospitalLocation");
            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
                hosLo = new HospitalLocation(rs);
                if (hosLoList == null) {
                    hosLoList = new ArrayList();
                }
                hosLoList.add(hosLo);
            }
            rs.close();
            pstm.close();
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(HospitalLocation.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(HospitalLocation.class.getName()).log(Level.SEVERE, null, ex);
        }
        return hosLoList;
    }
    
    public static void main(String[] args) throws SQLException {
        HospitalLocation h = new HospitalLocation();
        List<HospitalLocation> trashList = h.pullHospitalLocation();
        System.out.println("Size : "+h.pullHospitalLocation().size());
        for(int i=0;i<trashList.size();i++){
            System.out.println(trashList.get(i));
        }
        
    }
        
    }

