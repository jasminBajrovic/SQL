CREATE SCHEMA webprodavnica;

CREATE TABLE `adresa` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Postanski broj` varchar(6) NOT NULL,
  `Grad` varchar(45) NOT NULL,
  `Ulica` varchar(45) NOT NULL,
  `Broj` varchar(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `korisnik` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID adrese` int(11) DEFAULT NULL,
  `e-mail` varchar(45) NOT NULL,
  `sifra` varchar(45) NOT NULL,
  `Ime` varchar(45) NOT NULL,
  `Prezime` varchar(45) NOT NULL,
  `DOB` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `e-mail_UNIQUE` (`e-mail`),
  UNIQUE KEY `ID adrese_UNIQUE` (`ID adrese`),
  CONSTRAINT `adresa` FOREIGN KEY (`ID adrese`) REFERENCES `adresa` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `webprodavnica`.`artikal` (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naziv` VARCHAR(45) NOT NULL,
  `Ulazna cena` DOUBLE UNSIGNED NOT NULL,
  `Marza` INT UNSIGNED NOT NULL,
  `Prodajna cena` DOUBLE UNSIGNED NOT NULL,
  `Na lageru` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `Probni indeks` (`Naziv` ASC) VISIBLE);
