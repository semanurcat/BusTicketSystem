package com.mycompany.proje_2;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.Insets;
import java.sql.SQLException;
import java.util.Vector;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JOptionPane;

import javax.swing.JPasswordField;
import javax.swing.JScrollPane;

import javax.swing.JTextField;
import javax.swing.SwingUtilities;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.swing.table.DefaultTableModel;

public class Proje_2 extends JFrame {

    public static List<Vehicle> araclar = new ArrayList<>();
    public static List<Personel> personeller = new ArrayList<>();

    public Proje_2() {

 

        Personel kullanan_1_a = new Personel("a", "A", "Kullanan", 5000);
        Personel kullanan_2_a = new Personel("b", "A", "Kullanan", 5000);
        Personel kullanan_3_a = new Personel("c", "A", "Kullanan", 5000);
        Personel kullanan_4_a = new Personel("d", "A", "Kullanan", 5000);
        Personel hizmet_1_a = new Personel("f", "A", "hizmet", 2000);
        Personel hizmet_2_a = new Personel("g", "A", "hizmet", 2000);
        Personel hizmet_3_a = new Personel("h", "A", "hizmet", 2000);
        Personel hizmet_4_a = new Personel("j", "A", "hizmet", 2000);
        Personel kullanan_1_b = new Personel("a", "B", "Kullanan", 3000);
        Personel kullanan_2_b = new Personel("b", "B", "Kullanan", 3000);
        Personel kullanan_3_b = new Personel("c", "B", "Kullanan", 3000);
        Personel kullanan_4_b = new Personel("d", "B", "Kullanan", 3000);
        Personel hizmet_1_b = new Personel("f", "B", "hizmet", 1500);
        Personel hizmet_2_b = new Personel("g", "B", "hizmet", 1500);
        Personel hizmet_3_b = new Personel("h", "B", "hizmet", 1500);
        Personel hizmet_4_b = new Personel("j", "B", "hizmet", 1500);
        Personel kullanan_1_c = new Personel("a", "C", "Kullanan", 3000);
        Personel kullanan_2_c = new Personel("b", "C", "Kullanan", 3000);
        Personel kullanan_3_c = new Personel("c", "C", "Kullanan", 10000);
        Personel kullanan_4_c = new Personel("d", "C", "Kullanan", 10000);
        Personel kullanan_5_c = new Personel("c", "C", "Kullanan", 10000);
        Personel kullanan_6_c = new Personel("d", "C", "Kullanan", 10000);
        Personel hizmet_1_c = new Personel("f", "C", "hizmet", 1500);
        Personel hizmet_2_c = new Personel("g", "C", "hizmet", 1500);
        Personel hizmet_3_c = new Personel("h", "C", "hizmet", 6000);
        Personel hizmet_4_c = new Personel("j", "C", "hizmet", 6000);
        Personel hizmet_5_c = new Personel("h", "C", "hizmet", 6000);
        Personel hizmet_6_c = new Personel("j", "C", "hizmet", 6000);
        Personel kullanan_1_d = new Personel("a", "D", "Kullanan", 2000);
        Personel kullanan_2_d = new Personel("b", "D", "Kullanan", 2000);
        Personel kullanan_3_d = new Personel("c", "D", "Kullanan", 2000);
        Personel kullanan_4_d = new Personel("d", "D", "Kullanan", 2000);
        Personel kullanan_5_d = new Personel("c", "D", "Kullanan", 2000);
        Personel kullanan_6_d = new Personel("d", "D", "Kullanan", 2000);
        Personel hizmet_1_d = new Personel("f", "D", "hizmet", 1000);
        Personel hizmet_2_d = new Personel("g", "D", "hizmet", 1000);
        Personel hizmet_3_d = new Personel("h", "D", "hizmet", 1000);
        Personel hizmet_4_d = new Personel("j", "D", "hizmet", 1000);
        Personel hizmet_5_d = new Personel("h", "D", "hizmet", 1000);
        Personel hizmet_6_d = new Personel("j", "D", "hizmet", 1000);
        Personel kullanan_1_f = new Personel("a", "F", "Kullanan", 7500);
        Personel kullanan_2_f = new Personel("b", "F", "Kullanan", 7500);
        Personel kullanan_3_f = new Personel("c", "F", "Kullanan", 7500);
        Personel kullanan_4_f = new Personel("d", "F", "Kullanan", 7500);
        Personel hizmet_1_f = new Personel("f", "F", "hizmet", 4000);
        Personel hizmet_2_f = new Personel("g", "F", "hizmet", 4000);
        Personel hizmet_3_f = new Personel("h", "F", "hizmet", 4000);
        Personel hizmet_4_f = new Personel("j", "F", "hizmet", 4000);
        personeller.add(kullanan_1_a);
        personeller.add(kullanan_2_a);
        personeller.add(kullanan_3_a);
        personeller.add(kullanan_4_a);
        personeller.add(hizmet_1_a);
        personeller.add(hizmet_2_a);
        personeller.add(hizmet_3_a);
        personeller.add(hizmet_4_a);
        personeller.add(kullanan_1_b);
        personeller.add(kullanan_2_b);
        personeller.add(kullanan_3_b);
        personeller.add(kullanan_4_b);
        personeller.add(hizmet_1_b);
        personeller.add(hizmet_2_b);
        personeller.add(hizmet_3_b);
        personeller.add(hizmet_4_b);
        personeller.add(kullanan_1_c);
        personeller.add(kullanan_2_c);
        personeller.add(kullanan_3_c);
        personeller.add(kullanan_4_c);
        personeller.add(kullanan_5_c);
        personeller.add(kullanan_6_c);
        personeller.add(hizmet_1_c);
        personeller.add(hizmet_2_c);
        personeller.add(hizmet_3_c);
        personeller.add(hizmet_4_c);
        personeller.add(hizmet_5_c);
        personeller.add(hizmet_6_c);
        personeller.add(kullanan_1_d);
        personeller.add(kullanan_2_d);
        personeller.add(kullanan_3_d);
        personeller.add(kullanan_4_d);
        personeller.add(kullanan_5_d);
        personeller.add(kullanan_6_d);
        personeller.add(hizmet_1_d);
        personeller.add(hizmet_2_d);
        personeller.add(hizmet_3_d);
        personeller.add(hizmet_4_d);
        personeller.add(hizmet_5_d);
        personeller.add(hizmet_6_d);
        personeller.add(kullanan_1_f);
        personeller.add(kullanan_2_f);
        personeller.add(kullanan_3_f);
        personeller.add(kullanan_4_f);
        personeller.add(hizmet_1_f);
        personeller.add(hizmet_2_f);
        personeller.add(hizmet_3_f);
        personeller.add(hizmet_4_f);

        // Ana panel ayarları
        setTitle("Ana Panel");
        setSize(300, 150);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(new FlowLayout());

        // Admin butonu
        JButton btnAdmin = new JButton("Admin");
        btnAdmin.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new AdminWindow();
            }
        });
        add(btnAdmin);

        // Bilet Al butonu
        JButton btnBiletAl = new JButton("Bilet Al");
        btnBiletAl.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new BiletAlWindow();
            }
        });
        add(btnBiletAl);

        // Firma butonu
        JButton btnFirma = new JButton("Firma");
        btnFirma.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new FirmaWindow();
            }
        });
        add(btnFirma);

        // Ana paneli göster
        setVisible(true);
    }

    public static void aracEkle(Vehicle arac) {
        araclar.add(arac);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                new Proje_2();
            }
        });
    }
}

class AdminWindow extends JFrame {

    private JTextField txtUsername;
    private JPasswordField txtPassword;
    private JButton btnLogin;

    public AdminWindow() {
        setTitle("Admin Girişi");
        setSize(250, 200);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLayout(new FlowLayout());

        txtUsername = new JTextField(15);
        txtPassword = new JPasswordField(15);
        btnLogin = new JButton("Giriş Yap");

        add(new JLabel("Kullanıcı Adı:"));
        add(txtUsername);
        add(new JLabel("Şifre:"));
        add(txtPassword);
        add(btnLogin);

        // Admin nesnesi oluştur
        Admin admin = new Admin("1", "1");

        btnLogin.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String username = txtUsername.getText();
                String password = new String(txtPassword.getPassword());
                // Admin nesnesi ile giriş kontrolü yap
                if (admin.giris(username, password)) {
                    JOptionPane.showMessageDialog(AdminWindow.this,
                            "Başarılı giriş!", "Giriş Başarılı", JOptionPane.INFORMATION_MESSAGE);
                    new AdminPanel().setVisible(true); // Admin dashboard penceresini aç
                    AdminWindow.this.dispose(); // Giriş penceresini kapat
                } else {
                    JOptionPane.showMessageDialog(AdminWindow.this,
                            "Hatalı kullanıcı adı veya şifre!", "Giriş Başarısız", JOptionPane.ERROR_MESSAGE);
                }
            }
        });

        setLocationRelativeTo(null); // Pencereyi ekranın ortasında aç
        setVisible(true);
    }
}

class AdminPanel extends JFrame {

    private JTextField txtHizmetBedeli;
    private JLabel lblHizmetBedeliDurumu;
    private JButton btnFirmaEkleCikar, btnFirmaListele;
    static public int hizmetBedeli;

    public AdminPanel() {
        setTitle("Admin Paneli");
        setSize(400, 300);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLayout(new FlowLayout());

        txtHizmetBedeli = new JTextField(10);
        add(new JLabel("Hizmet Bedeli:"));
        add(txtHizmetBedeli);

        lblHizmetBedeliDurumu = new JLabel("Güncel Hizmet Bedeli: Henüz belirlenmedi.");
        add(lblHizmetBedeliDurumu);

        btnFirmaEkleCikar = new JButton("Firma Ekle/Cikar");
        btnFirmaEkleCikar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                FirmaEkleCikarPanel ekleCikarPanel = new FirmaEkleCikarPanel();
                ekleCikarPanel.setLocationRelativeTo(AdminPanel.this);
                ekleCikarPanel.setVisible(true);
            }
        });
        add(btnFirmaEkleCikar);

        JButton btnKaydet = new JButton("Kaydet");
        btnKaydet.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    hizmetBedeli = Integer.parseInt(txtHizmetBedeli.getText());
                    lblHizmetBedeliDurumu.setText("Güncel Hizmet Bedeli: " + hizmetBedeli);
                    JOptionPane.showMessageDialog(AdminPanel.this,
                            "Hizmet bedeli kaydedildi: " + hizmetBedeli, "Başarılı", JOptionPane.INFORMATION_MESSAGE);
                } catch (NumberFormatException nfe) {
                    JOptionPane.showMessageDialog(AdminPanel.this,
                            "Lütfen geçerli bir sayı girin.", "Hata", JOptionPane.ERROR_MESSAGE);
                }
            }
        });
        add(btnKaydet);

        btnFirmaListele = new JButton("Firmaları Listele");
        btnFirmaListele.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    JFrame firmaListeFrame = new JFrame("Firmalar Listesi");
                    firmaListeFrame.setSize(300, 400);
                    firmaListeFrame.setLayout(new BorderLayout());
                    firmaListeFrame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

                    Admin admin = new Admin("", "");
                    JList<String> firmaListesi = new JList<>(new Vector<>(admin.FirmalariGetir()));
                    firmaListeFrame.add(new JScrollPane(firmaListesi), BorderLayout.CENTER);

                    firmaListeFrame.setVisible(true);
                } catch (SQLException ex) {
                    JOptionPane.showMessageDialog(AdminPanel.this,
                            "Veritabanı hatası: " + ex.getMessage(), "Hata", JOptionPane.ERROR_MESSAGE);
                }
            }
        });
        add(btnFirmaListele);

        setLocationRelativeTo(null);
        setVisible(true);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                new AdminPanel();
            }
        });
    }
}

class FirmaEkleCikarPanel extends JFrame {

    private JTextField txtFirmaAdi;
    private JPasswordField txtSifre;
    private JButton btnEkle;
    private JButton btnCikar;

    public FirmaEkleCikarPanel() {
        setTitle("Firma Ekle/Cikar");
        setSize(450, 200);
        setLayout(new FlowLayout());
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        txtFirmaAdi = new JTextField(15);
        txtSifre = new JPasswordField(15);
        btnEkle = new JButton("Firma Ekle");
        btnCikar = new JButton("Firma Çıkar");

        // Firma ekleme işlemini gerçekleştiren ActionListener
        btnEkle.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Kullanıcı girdilerini al
                String firmaAdi = txtFirmaAdi.getText();
                String sifre = new String(txtSifre.getPassword());

                // Firma nesnesi oluştur
                Admin yeniFirma = new Admin(firmaAdi, sifre);

                // Firma nesnesini veritabanına kaydet
                try {
                    yeniFirma.firmaKaydet();
                    JOptionPane.showMessageDialog(FirmaEkleCikarPanel.this,
                            "Firma başarıyla eklendi!", "Başarılı", JOptionPane.INFORMATION_MESSAGE);
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    JOptionPane.showMessageDialog(FirmaEkleCikarPanel.this,
                            "Firma eklenemedi: " + ex.getMessage(), "Hata", JOptionPane.ERROR_MESSAGE);
                }
            }
        });

        // Firma çıkarma işlemini gerçekleştiren ActionListener
        btnCikar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Kullanıcı girdilerini al
                String firmaAdi = txtFirmaAdi.getText();

                // Firma nesnesi oluştur
                Admin firma = new Admin(firmaAdi, "");

                // Firma nesnesini veritabanından çıkar
                try {
                    firma.firmaSil();
                    JOptionPane.showMessageDialog(FirmaEkleCikarPanel.this,
                            "Firma başarıyla çıkarıldı!", "Başarılı", JOptionPane.INFORMATION_MESSAGE);
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    JOptionPane.showMessageDialog(FirmaEkleCikarPanel.this,
                            "Firma çıkarılamadı: " + ex.getMessage(), "Hata", JOptionPane.ERROR_MESSAGE);
                }
            }
        });

        add(new JLabel("Firma Adı:"));
        add(txtFirmaAdi);
        add(new JLabel("Şifre:"));
        add(txtSifre);
        add(btnEkle);
        add(btnCikar);
        add(new JLabel("eğer firma silmek istiyorsanız yalnızca firma adını girmeniz yeterlidir"));

        setLocationRelativeTo(null);
        setVisible(true);
    }
}

// Firma penceresi için sınıf
class FirmaWindow extends JFrame {

    private JTextField txtFirmaAdi;
    private JPasswordField txtSifre;
    private JButton btnGiris;
    public static String firmaa;

    public FirmaWindow() {
        setTitle("Firma Giriş Paneli");
        setSize(300, 200);
        setLayout(new FlowLayout());
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        // Firma adı ve şifre giriş bileşenleri
        txtFirmaAdi = new JTextField(20);
        txtSifre = new JPasswordField(20);
        btnGiris = new JButton("Giriş Yap");

        // Bileşenleri pencereye ekle
        add(new JLabel("Firma Adı:"));
        add(txtFirmaAdi);
        add(new JLabel("Şifre:"));
        add(txtSifre);
        add(btnGiris);

        // Giriş butonuna basıldığında yapılacak işlem
        btnGiris.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String firmaAdi = txtFirmaAdi.getText();
                String sifre = new String(txtSifre.getPassword());
                Firma firma = new Firma(firmaAdi, sifre);
                Firma.girisYapanFirma = firmaAdi;

                try {
                    if (firma.giris(firmaAdi, sifre)) {
                        // Giriş başarılıysa FirmaPanel aç
                        new FirmaPanel().setVisible(true);
                        Firma.girisYapanFirma = firmaAdi;
                        System.out.println("giriş yapan "+Firma.girisYapanFirma);
                        Firma.girisYapanSifre = sifre;
                        firmaa = firmaAdi;
                        // Mevcut giriş penceresini kapat
                        dispose();
                    } else {
                        JOptionPane.showMessageDialog(FirmaWindow.this,
                                "Firma adı veya şifre hatalı!", "Giriş Başarısız", JOptionPane.ERROR_MESSAGE);
                    }
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    JOptionPane.showMessageDialog(FirmaWindow.this,
                            "Veritabanı bağlantı hatası: " + ex.getMessage(), "Hata", JOptionPane.ERROR_MESSAGE);
                }
            }
        });

        // Pencereyi göster
        setVisible(true);
    }
}





class FirmaPanel extends JFrame {

    public FirmaPanel() {
        setTitle("Firma Paneli");
        setSize(400, 300);
        setLayout(new FlowLayout());
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        JLabel lblGunlukKar = new JLabel("Günlük Kar: " + Firma.gunlukKar()); // Firma.gunlukKar() metoduyla günlük karı alıp label'a ekliyoruz
        add(lblGunlukKar);

        JButton btnAraclar = new JButton("Araç Ekle/Çıkar");
        btnAraclar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                AracEkleCikar aracEkleCikar = new AracEkleCikar();
                aracEkleCikar.setVisible(true);
            }
        });
        add(btnAraclar);
        
        JButton btnSeferler = new JButton("Sefer Ekle/Çıkar");
        btnSeferler.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                SeferEkleCikar seferEkleCikar = new SeferEkleCikar();
                seferEkleCikar.setVisible(true);
            }
        });
        add(btnSeferler);

        setVisible(true);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                new FirmaPanel();
            }
        });
    }
}







class SeferEkleCikar extends JFrame {
    
   
    
    private JTextField txtRota;
    private JTextField txtTarih;
    private JTextField txtAracTip;
    private JTextField txtFirma;
    private JTextField txtKoltukSayisi;
    static public DefaultListModel<String> seferListModel;
    private JList<String> seferList;

    public SeferEkleCikar() {
        setTitle("Sefer Ekle/Çıkar");
        setSize(400, 500);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLayout(new FlowLayout());

        // Rota
        JLabel lblRota = new JLabel("Rota:");
        txtRota = new JTextField(20);
        add(lblRota);
        add(txtRota);

        // Tarih
        JLabel lblTarih = new JLabel("Tarih:");
        txtTarih = new JTextField(20);
        add(lblTarih);
        add(txtTarih);

        // Araç Tipi
        JLabel lblAracTip = new JLabel("Araç Tipi:");
        txtAracTip = new JTextField(20);
        add(lblAracTip);
        add(txtAracTip);

        // Firma
        JLabel lblFirma = new JLabel("Firma:");
        txtFirma = new JTextField(20);
        add(lblFirma);
        add(txtFirma);

        // Koltuk Sayısı
        JLabel lblKoltukSayisi = new JLabel("Koltuk Sayısı:");
        txtKoltukSayisi = new JTextField(20);
        add(lblKoltukSayisi);
        add(txtKoltukSayisi);

        // Sefer Ekle Butonu
        JButton btnEkle = new JButton("Sefer Ekle");
        btnEkle.addActionListener(e -> {
            String rota = txtRota.getText();
            String tarih = txtTarih.getText();
            String aracTip = txtAracTip.getText();
            String firma = txtFirma.getText();
            String koltukSayisi = txtKoltukSayisi.getText();
            String sefer = rota + " - " + tarih + " - " + aracTip + " - " + firma + " - " + koltukSayisi;
            seferListModel.addElement(sefer);
            Firma.seferEkleme(rota, tarih, aracTip, firma, koltukSayisi);
        });
        add(btnEkle);


        // Sefer Çıkar Butonu
        JButton btnCikar = new JButton("Sefer Çıkar");
        btnCikar.addActionListener(e -> {
            int seciliIndex = seferList.getSelectedIndex();
            if (seciliIndex != -1) {
                String seciliSefer = seferListModel.getElementAt(seciliIndex);
                String[] seferBilgileri = seciliSefer.split(" - ");
                String rota = seferBilgileri[0];
                String tarih = seferBilgileri[1];
                String aracTip = seferBilgileri[2];
                String firma = seferBilgileri[3];
                String koltukSayisi = seferBilgileri[4];
                seferListModel.removeElementAt(seciliIndex);
                Firma.seferCikartma(rota, tarih, aracTip, firma, koltukSayisi);
            }
        });
        add(btnCikar);

        // Sefer Listesi
        seferListModel = new DefaultListModel<>();
        seferList = new JList<>(seferListModel);
        JScrollPane scrollPane = new JScrollPane(seferList);
        scrollPane.setPreferredSize(new Dimension(380, 200));
        add(scrollPane);

        // Veritabanından seferleri çek
        Firma.cekSeferVeritabani();

        setVisible(true);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                new SeferEkleCikar();
            }
        });
    }
}

class AracEkleCikar extends JFrame {

    private JTextField txtAracTip;
    private JTextField txtFirma;
    private JTextField txtKoltukSayisi;
    private JTextField txtYakit;
    private JTextField txtSefer;
    public static DefaultListModel<String> aracListModel;
    private JList<String> aracList;

    public AracEkleCikar() {
        setTitle("Araç Ekle/Çıkar");
        setSize(400, 300);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLayout(new FlowLayout());

        // Araç Tipi
        JLabel lblAracTip = new JLabel("Araç Tipi:");
        txtAracTip = new JTextField(20);
        add(lblAracTip);
        add(txtAracTip);

        // Firma
        JLabel lblFirma = new JLabel("Firma:");
        txtFirma = new JTextField(20);
        add(lblFirma);
        add(txtFirma);

        // Koltuk Sayısı
        JLabel lblKoltukSayisi = new JLabel("Koltuk Sayısı:");
        txtKoltukSayisi = new JTextField(20);
        add(lblKoltukSayisi);
        add(txtKoltukSayisi);

        // Yakıt
        JLabel lblYakit = new JLabel("Yakıt:");
        txtYakit = new JTextField(20);
        add(lblYakit);
        add(txtYakit);

        // Sefer
        JLabel lblSefer = new JLabel("Sefer:");
        txtSefer = new JTextField(20);
        add(lblSefer);
        add(txtSefer);

        // Araç Ekle Butonu
        JButton btnEkle = new JButton("Araç Ekle");
        btnEkle.addActionListener(e -> {
            String aracTip = txtAracTip.getText();
            String firma = txtFirma.getText();
            String koltukSayisi = txtKoltukSayisi.getText();
            String yakit = txtYakit.getText();
            String sefer = txtSefer.getText();
            String arac = aracTip + " - " + firma + " - " + koltukSayisi + " - " + yakit + " - " + sefer;
            aracListModel.addElement(arac);
            Firma.ekleAracVeritabani(aracTip, firma, koltukSayisi, yakit, sefer);
        });
        add(btnEkle);


        // Araç Çıkar Butonu
        JButton btnCikar = new JButton("Araç Çıkar");
        btnCikar.addActionListener(e -> {
            String seciliArac = aracList.getSelectedValue();
            if (seciliArac != null) {
                aracListModel.removeElement(seciliArac);
                Firma.cikarAracVeritabani(seciliArac);
            }
        });
        add(btnCikar);

        // Araç Listesi
        aracListModel = new DefaultListModel<>();
        aracList = new JList<>(aracListModel);
        JScrollPane scrollPane = new JScrollPane(aracList);
        scrollPane.setPreferredSize(new Dimension(380, 200));
        add(scrollPane);

        // Veritabanından araçları çek
        Firma.cekAracVeritabani();

        setVisible(true);
    }



    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                new AracEkleCikar();
            }
        });
    }
}







class BiletAlWindow extends JFrame {
    public static int ucret;
    public static int koltuk_sayisi;
    public static String arac_tip;
    public static String firma;
    public static String cikisSehri;
    public static String varisSehri;
    public static String tarih;
    private JComboBox<String> cmbCikisSehri;
    private JComboBox<String> cmbVarisSehri;
    private JComboBox<String> cmbTarih;
    private DefaultListModel<String> bilgiListModel;
    private JList<String> bilgiList;

    public BiletAlWindow() {
        setTitle("Bilet Al");
        setSize(800, 300);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLayout(new FlowLayout());
        setVisible(true);

        // Çıkış Şehri
        JLabel lblCikisSehri = new JLabel("Çıkış Şehri:");
        String[] sehirler = {"İstanbul", "Kocaeli", "Bilecik", "Ankara", "Eskişehir", "Konya"};
        cmbCikisSehri = new JComboBox<>(sehirler);
        add(lblCikisSehri);
        add(cmbCikisSehri);

        // Varış Şehri
        JLabel lblVarisSehri = new JLabel("Varış Şehri:");
        cmbVarisSehri = new JComboBox<>(sehirler);
        add(lblVarisSehri);
        add(cmbVarisSehri);

        // Tarih
        JLabel lblTarih = new JLabel("Tarih:");
        String[] tarihler = {"2023-12-08", "2023-12-09", "2023-12-10", "2023-12-11", "2023-12-12", "2023-12-13", "2023-12-14", "2023-12-15"};
        cmbTarih = new JComboBox<>(tarihler);
        add(lblTarih);
        add(cmbTarih);

        // Bilgi Listesi
        bilgiListModel = new DefaultListModel<>();
        bilgiList = new JList<>(bilgiListModel);
        JScrollPane scrollPane = new JScrollPane(bilgiList);
        scrollPane.setPreferredSize(new Dimension(380, 200));
        add(scrollPane);

        // Sefer Ara Butonu
        JButton btnSeferAra = new JButton("Sefer Ara");
        btnSeferAra.addActionListener(e -> {
            cikisSehri = cmbCikisSehri.getSelectedItem().toString();
            varisSehri = cmbVarisSehri.getSelectedItem().toString();
            tarih = cmbTarih.getSelectedItem().toString();
            bilgiListModel.clear(); // Mevcut değerleri temizle
            seferleriListele(cikisSehri, varisSehri, tarih); // Seferleri listele
        });
        add(btnSeferAra);

        // Bilet Al Butonu
        JButton btnBiletAl = new JButton("Bilet Al");
        btnBiletAl.addActionListener(e -> {
            if (bilgiList.getSelectedValue() != null) {
                seferBilgileriniAl(bilgiList.getSelectedValue().toString());
                // Bilet rezervasyon penceresi burada açılır
                new BiletRezervasyon().setVisible(true);
            } else {
                JOptionPane.showMessageDialog(this, "Lütfen bir sefer seçiniz.");
            }
        });
        add(btnBiletAl);
        
        
        
    }
    
    public void seferleriListele(String cikisSehri, String varisSehri, String tarih) {
        String url = "jdbc:mysql://localhost:3306/firmalar";
        String kullaniciAdi = "root";
        String sifre = "";

        try {
            Connection conn = DriverManager.getConnection(url, kullaniciAdi, sifre);
            String sql = "SELECT * FROM seferler WHERE rota LIKE ? AND rota LIKE ? AND tarih = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, "%" + cikisSehri + "%");
            pstmt.setString(2, "%" + varisSehri + "%");
            pstmt.setString(3, tarih);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                koltuk_sayisi = rs.getInt("koltuk_sayisi");
                firma = rs.getString("firma");
                arac_tip = rs.getString("arac_tip");
                String ucrett = Trip.getUcretForFirma(conn, firma.toLowerCase(), cikisSehri, varisSehri);
                ucret = Integer.parseInt(ucrett);
                String sefer = cikisSehri + "-" + varisSehri + "    " + rs.getString("tarih") + "   " + firma + "   " + arac_tip + "   " + koltuk_sayisi + "   " +ucrett;
                bilgiListModel.addElement(sefer);
            }

            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
        
        public void seferBilgileriniAl(String secilenSefer) {
        String url = "jdbc:mysql://localhost:3306/firmalar";
        String kullaniciAdi = "root";
        String sifre = "";

        try {
            Connection conn = DriverManager.getConnection(url, kullaniciAdi, sifre);
            String sql = "SELECT * FROM seferler WHERE rota LIKE ? AND rota LIKE ? AND tarih = ? AND firma = ? AND arac_tip = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            String[] seferBilgileri = secilenSefer.split("   ");
            pstmt.setString(1, "%" + seferBilgileri[0].split("-")[0] + "%");
            pstmt.setString(2, "%" + seferBilgileri[0].split("-")[1] + "%");
            pstmt.setString(3, seferBilgileri[1]);
            pstmt.setString(4, seferBilgileri[2]);
            pstmt.setString(5, seferBilgileri[3]);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                koltuk_sayisi = rs.getInt("koltuk_sayisi");
                firma = rs.getString("firma");
                arac_tip = rs.getString("arac_tip");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
    }
    }


class BiletRezervasyon extends JFrame {

        int ucret = BiletAlWindow.ucret;
        public static String tabloAd = BiletAlWindow.firma.toLowerCase() + BiletAlWindow.arac_tip.toLowerCase().replaceAll(" ", "");
        int koltuk_sayisi = BiletAlWindow.koltuk_sayisi;
        JButton[] koltuklar = new JButton[koltuk_sayisi];
        private JButton biletAlButton;
        private JTextField isimField, soyisimField, tcField, dogumTarihiField;

        public BiletRezervasyon() {
            setSize(800, 600);
            setLayout(new BorderLayout());

            JPanel koltukPanel = new JPanel();
            koltukPanel.setLayout(new GridLayout(koltuk_sayisi / 3, 3));

            for (int i = 0; i < koltuk_sayisi; i++) {
                koltuklar[i] = new JButton("Koltuk " + (i + 1));
                koltuklar[i].setEnabled(false);
                koltuklar[i].setBackground(Color.RED);
                koltukPanel.add(koltuklar[i]);
            }

            JPanel formPanel = new JPanel();
            formPanel.setLayout(new GridBagLayout());
            GridBagConstraints gbc = new GridBagConstraints();
            gbc.insets = new Insets(10, 10, 10, 10); // Boşluk ayarları

            isimField = new JTextField(10);
            soyisimField = new JTextField(10);
            tcField = new JTextField(10);
            dogumTarihiField = new JTextField(10);
            biletAlButton = new JButton("Bilet Al");

            gbc.gridx = 0;
            gbc.gridy = 0;
            formPanel.add(new JLabel("İsim:"), gbc);
            gbc.gridx = 1;
            gbc.gridy = 0;
            formPanel.add(isimField, gbc);
            gbc.gridx = 0;
            gbc.gridy = 1;
            formPanel.add(new JLabel("Soyisim:"), gbc);
            gbc.gridx = 1;
            gbc.gridy = 1;
            formPanel.add(soyisimField, gbc);
            gbc.gridx = 0;
            gbc.gridy = 2;
            formPanel.add(new JLabel("TC:"), gbc);
            gbc.gridx = 1;
            gbc.gridy = 2;
            formPanel.add(tcField, gbc);
            gbc.gridx = 0;
            gbc.gridy = 3;
            formPanel.add(new JLabel("Doğum Tarihi:"), gbc);
            gbc.gridx = 1;
            gbc.gridy = 3;
            formPanel.add(dogumTarihiField, gbc);
            gbc.gridx = 0;
            gbc.gridy = 4;
            gbc.gridwidth = 2;
            gbc.anchor = GridBagConstraints.CENTER;
            formPanel.add(biletAlButton, gbc);

            add(koltukPanel, BorderLayout.WEST);
            add(formPanel, BorderLayout.EAST);

            try {
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/firmalar", "root", "");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM " + tabloAd);

                while (rs.next()) {
                    int koltukNo = rs.getInt("koltuk_id");
                    int durum = rs.getInt("durum");

                    if (durum == 0) {
                        koltuklar[koltukNo - 1].setEnabled(true);
                        koltuklar[koltukNo - 1].setBackground(Color.WHITE);
                        koltuklar[koltukNo - 1].addActionListener(new ActionListener() {
                            @Override
                            public void actionPerformed(ActionEvent e) {
                                // Koltuk seçildiğinde yapılacak işlemler
                                String isim = isimField.getText();
                                String soyisim = soyisimField.getText();
                                String tcFieldText = tcField.getText();
                                long tcno = Long.parseLong(tcFieldText);
                                String dogumTarihi = dogumTarihiField.getText();

                                try {
                                    // Bilet bilgilerini tabloAd + "bilet" tablosuna ekleyin
                                    String query = "INSERT INTO " + tabloAd + "bilet (id, isim, soyisim, tcno, dg) VALUES (?, ?, ?, ?, ?)";
                                    PreparedStatement preparedStmt = con.prepareStatement(query);
                                    preparedStmt.setInt(1, koltukNo);
                                    System.out.println("Seçilen koltuk degeri : "+koltukNo);
                                    preparedStmt.setString(2, isim);
                                    preparedStmt.setString(3, soyisim);
                                    preparedStmt.setLong(4, tcno);
                                    preparedStmt.setString(5, dogumTarihi);
                                    preparedStmt.execute();
                                    
                                    // Seçilen koltuğun durumunu 0'dan 1'e değiştirin ve ucret değerini atayın
                                    query = "UPDATE " + tabloAd + " SET durum = 1, ucret = ? WHERE koltuk_id = ?";
                                    preparedStmt = con.prepareStatement(query);
                                    preparedStmt.setInt(1, ucret);
                                    preparedStmt.setInt(2, koltukNo);
                                    preparedStmt.execute();
                                    
                                    // Bilet alımı başarılı olduğunda bir mesaj göster
                                    JOptionPane.showMessageDialog(null, "Bilet alımı başarılı!");
                                } catch (SQLException throwables) {
                                    throwables.printStackTrace();
                                }
                            }
                        });
                    }
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }
    
 
    

  
    




