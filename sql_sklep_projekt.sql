CREATE TABLE Pracownik (
    id_pracownika INT PRIMARY KEY,
    imie VARCHAR(255),
    nazwisko VARCHAR(255),
    pesel VARCHAR(11),
    data_urodzenia DATE
);
CREATE TABLE Klient (
    ID_klienta INT PRIMARY KEY,
    imie VARCHAR(255),
    nazwisko VARCHAR(255),
    email VARCHAR(255),
    telefon INT
);
CREATE TABLE Zamowienie (
    id_zamowienia INT PRIMARY KEY,
    id_pracownika INT,
    cena MONEY,
    id_klienta INT,
    data_zamowienia DATE,
    FOREIGN KEY (id_pracownika) REFERENCES Pracownik(id_pracownika),
    FOREIGN KEY (id_klienta) REFERENCES Klient(ID_klienta)
);
CREATE TABLE Produkt (
    id_produktu INT PRIMARY KEY,
    waluta_ceny VARCHAR(3),
    cena_produktu DOUBLE PRECISION,
    nazwa_produktu VARCHAR(255),
    typ_produktu INT
);
CREATE TABLE Produkt_Typ (
    typ_produktu INT PRIMARY KEY,
    pelna_nazwa VARCHAR(255),
    rabat DOUBLE PRECISION
);
CREATE TABLE Zamowienie_Produkt (
    zamowienie_produkt_id INT PRIMARY KEY,
    id_zamowienia INT,
    id_produktu INT,
    FOREIGN KEY (id_zamowienia) REFERENCES Zamowienie(id_zamowienia),
    FOREIGN KEY (id_produktu) REFERENCES Produkt(id_produktu)
);