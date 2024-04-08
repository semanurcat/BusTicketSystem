package com.mycompany.proje_2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Trip {

    Vehicle vehicle;
    Route route;

    public Trip(Vehicle vehicle, Route route) {
        this.route = route;
        this.vehicle = vehicle;
    }

    public static String getUcretForFirma(Connection conn, String firma, String cikisSehri, String varisSehri) throws SQLException {
        firma = firma + "ucret";
        System.out.print("firma");
        String sql = "SELECT fiyat FROM " + firma + " WHERE cıkıs_sehri = ? AND varis_sehri = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, cikisSehri);
        pstmt.setString(2, varisSehri);
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            return rs.getString("fiyat");
        } else {
            return "Bilinmiyor";
        }

    }
}
