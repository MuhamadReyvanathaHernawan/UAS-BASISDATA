CREATE TABLE admin (

    id_admin INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama_admin VARCHAR(260) NOT NULL,
    password_admin VARCHAR(260) NOT NULL    
);


CREATE TABLE pengguna (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    no_hp VARCHAR(260) NOT NULL,
    nama_lengkap VARCHAR(260) NOT NULL,
    password VARCHAR(260) NOT NULL,
    quality_point INT 
);

CREATE TABLE tanaman (
    id_tanaman INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    jenis_tanaman VARCHAR(260) NOT NULL 
);

CREATE TABLE kategori_artikel (
    id_kategori INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nama_kategori VARCHAR(255) NOT NULL
);


CREATE TABLE artikel (

    id_artikel INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    judul_artikel VARCHAR(300) NOT NULL,
    isi_artikel LONGTEXT NOT NULL,
    id_kategori INT NOT NULL,
    tanggal_artikel DATE NOT NULL,
    id_rating INT,
    FOREIGN KEY(id_kategori) REFERENCES kategori_artikel(id_kategori)
);

CREATE TABLE rating (
    id_rating INT AUTO_INCREMENT PRIMARY KEY,
    id_artikel INT NOT NULL,
    id_pengguna INT NOT NULL,
    nilai INT,
    FOREIGN KEY (id_artikel) REFERENCES artikel(id_artikel),
    FOREIGN KEY (id_pengguna) REFERENCES pengguna(id)
);