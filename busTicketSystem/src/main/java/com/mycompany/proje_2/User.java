package com.mycompany.proje_2;

/*import java.util.ArrayList;
import java.util.List;*/
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


abstract class User implements ILoginable {

    String username;
    String password;

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }
}

class Admin extends User {

    public Admin(String username, String password) {
        super(username, password);
        //this.firmalar = new ArrayList<>();
    }

    @Override
    public boolean giris(String username, String password) {
        if (username.equals("1") && password.equals("1")) {
            return true;
        }
        return false;
    }

    public void firmaKaydet() throws SQLException {
        // Veritabanı bağlantı bilgileri
        String url = "jdbc:mysql://localhost:3306/firmalar";
        String user = "root";
        String password = "";

        // SQL sorgusu
        String sql = "INSERT INTO firmalar (firma, sifre) VALUES (?, ?)";

        try (Connection conn = DriverManager.getConnection(url, user, password); PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, this.username);
            stmt.setString(2, this.password);

            // Sorguyu çalıştır
            stmt.executeUpdate();
        }
    }

    public void firmaSil() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/firmalar";
        String user = "root";
        String password = "";

        String query = "DELETE FROM firmalar WHERE firma = ?";
        try (Connection connection = DriverManager.getConnection(url, user, password)) {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, username);
            int rowsAffected = statement.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Firma çıkarıldı: " + username);
            } else {
                System.out.println("Firma çıkarılırken bir hata oluştu.");
            }
        } catch (SQLException e) {
            throw e;
        }
    }
    
    
    public List<String> FirmalariGetir() throws SQLException {

        List<String> firmalar = new ArrayList<>();

        String url = "jdbc:mysql://localhost:3306/firmalar";
        String user = "root"; 
        String password = "";

        String sql = "SELECT firma FROM `firmalar`";

        try (Connection conn = DriverManager.getConnection(url, user, password);
            PreparedStatement stmt = conn.prepareStatement(sql)) {

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                String firmaAdi = rs.getString("firma");
                firmalar.add(firmaAdi);
            }
        } 

        return firmalar;

    } 
}








class Firma extends User {
    public static String girisYapanFirma;
    public static String girisYapanSifre;

    Firma(String username, String password) {
        super(username, password);
    }
    
    

    @Override
    public boolean giris(String username, String password) throws SQLException  {
        // Veritabanı bağlantı bilgileri
        String url = "jdbc:mysql://localhost:3306/firmalar";
        String user = "root";
        String passwordsql= "";

        // SQL sorgusu
        String sql = "SELECT * FROM firmalar WHERE firma = ? AND sifre = ?";

        // Try-with-resources statement ile kaynakları otomatik yönet
        try (Connection conn = DriverManager.getConnection(url, user, passwordsql);
             PreparedStatement stmt = conn.prepareStatement(sql)) {
             
            // Parametreleri ayarla
            stmt.setString(1, username);
            stmt.setString(2, password);

            // Sorguyu çalıştır ve sonucu kontrol et
            try (ResultSet resultSet = stmt.executeQuery()) {
                if (resultSet.next()) {
                    // Eğer sonuç varsa doğrulama başarılı
                    return true;
                } else {
                    // Sonuç yoksa doğrulama başarısız
                    return false;
                }
            }
        }
    }

    static public void ekleAracVeritabani(String aracTip, String firma, String koltukSayisi, String yakit, String sefer) {
        int yakitt = 0;
        switch (yakit) {
            case "Benzin":
                yakitt = 0;
                break;
            case "Mazot":
                yakitt = 1;
                break;
            case "Tren":
                yakitt = 2;
                break;
            case "Elektrik":
                yakitt = 3;
                break;
        }

        String url = "jdbc:mysql://localhost:3306/firmalar";
        String kullaniciAdi = "root";
        String sifre = "";

        try {
            Connection conn = DriverManager.getConnection(url, kullaniciAdi, sifre);
            String sql = "INSERT INTO araclar (aracTip, firma, koltukSayisi, yakitt, sefer) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, aracTip);
            pstmt.setString(2, firma);
            pstmt.setInt(3, Integer.parseInt(koltukSayisi));
            pstmt.setInt(4, yakitt);
            pstmt.setInt(5, Integer.parseInt(sefer));
            pstmt.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void cikarAracVeritabani(String arac) {
        String url = "jdbc:mysql://localhost:3306/firmalar";
        String kullaniciAdi = "root";
        String sifre = "";

        try {
            Connection conn = DriverManager.getConnection(url, kullaniciAdi, sifre);
            String sql = "DELETE FROM araclar WHERE arac = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, arac);
            pstmt.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    static public void seferEkleme(String rota, String tarih, String aracTip, String firma, String koltukSayisi) {
        String url = "jdbc:mysql://localhost:3306/firmalar";
        String kullaniciAdi = "root";
        String sifre = "";

        try {
            Connection conn = DriverManager.getConnection(url, kullaniciAdi, sifre);
            String sql = "INSERT INTO seferler (rota, tarih, arac_tip, firma, koltuk_sayisi) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, rota);
            pstmt.setString(2, tarih);
            pstmt.setString(3, aracTip);
            pstmt.setString(4, firma);
            pstmt.setString(5, koltukSayisi);
            pstmt.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    static public void seferCikartma(String rota, String tarih, String aracTip, String firma, String koltukSayisi) {
        String url = "jdbc:mysql://localhost:3306/firmalar";
        String kullaniciAdi = "root";
        String sifre = "";

        try {
            Connection conn = DriverManager.getConnection(url, kullaniciAdi, sifre);
            String sql = "DELETE FROM seferler WHERE rota = ? AND tarih = ? AND arac_tip = ? AND firma = ? AND koltuk_sayisi = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, rota);
            pstmt.setString(2, tarih);
            pstmt.setString(3, aracTip);
            pstmt.setString(4, firma);
            pstmt.setString(5, koltukSayisi);
            pstmt.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
    static public void cekSeferVeritabani() {
        String firmaa = Firma.girisYapanFirma;
        String url = "jdbc:mysql://localhost:3306/firmalar";
        String kullaniciAdi = "root";
        String sifre = "";

        try {
            Connection conn = DriverManager.getConnection(url, kullaniciAdi, sifre);
            String sql = "SELECT * FROM seferler WHERE firma = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, firmaa);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String sefer = rs.getString("rota") + " - " + rs.getString("tarih") + " - " + rs.getString("arac_tip")
                        + " - " + rs.getString("firma") + " - " + rs.getString("koltuk_sayisi");
                SeferEkleCikar.seferListModel.addElement(sefer);
            }

            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public static void cekAracVeritabani() {
        String firmaa = Firma.girisYapanFirma;
        String url = "jdbc:mysql://localhost:3306/firmalar";
        String kullaniciAdi = "root";
        String sifre = "";

        try {
            Connection conn = DriverManager.getConnection(url, kullaniciAdi, sifre);
            String sql = "SELECT * FROM araclar WHERE firma = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, firmaa);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String arac = rs.getString("arac_tip") + " - " + rs.getString("firma") + " - " + rs.getInt("koltuk_sayisi")
                        + " - " + rs.getString("yakit") + " - " + rs.getString("sefer");
                AracEkleCikar.aracListModel.addElement(arac);
            }

            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
    public static int gunlukKar() {
    
        
  
    String url = "jdbc:mysql://localhost:3306/firmalar";
    String kullaniciAdi = "root";
    String sifre = "";
    int totalKar = 0;
    System.out.println("giris yapan firma:"+girisYapanFirma);
    try {
        Connection conn = DriverManager.getConnection(url, kullaniciAdi, sifre);
        String sql = "SELECT DISTINCT arac_tip FROM araclar WHERE firma = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, girisYapanFirma);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            String aracTip = rs.getString("arac_tip").toLowerCase().replace(" ", "");
            aracTip = girisYapanFirma+aracTip;
            String sql2 = "SELECT SUM(ucret) as toplamUcret FROM " + aracTip;
            PreparedStatement pstmt2 = conn.prepareStatement(sql2);
            ResultSet rs2 = pstmt2.executeQuery();

            if (rs2.next()) {
                Integer toplamUcret = rs2.getInt("toplamUcret");
                if (toplamUcret != null) {
                    totalKar += toplamUcret;
                }
            }
        }

        conn.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    System.out.println("toplam bilet geliri: " + totalKar);
    
    if(girisYapanFirma=="A"){
        totalKar=totalKar-AdminPanel.hizmetBedeli-38000;
    }
    else if(girisYapanFirma=="B"){
        totalKar=totalKar-AdminPanel.hizmetBedeli-50500;
    }
    else if(girisYapanFirma=="C"){
        totalKar=totalKar-AdminPanel.hizmetBedeli-79100;
    }
     else if(girisYapanFirma=="D"){
        totalKar=totalKar-AdminPanel.hizmetBedeli-50475;
    }
    else if(girisYapanFirma=="F"){
        totalKar=totalKar-AdminPanel.hizmetBedeli-28000;
    }
    return totalKar;
}
}
