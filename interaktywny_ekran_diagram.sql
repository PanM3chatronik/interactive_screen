CREATE TABLE `sala` (
  `id` int AUTO_INCREMENT PRIMARY KEY,
  `numer_sali` varchar(255),
  `pietro` int,
  `uzytkownik_id` int,
  `budynek` varchar(255)
);

CREATE TABLE `uzytkownik` (
  `id` int AUTO_INCREMENT PRIMARY KEY,
  `imie` varchar(255),
  `nazwisko` varchar(255),
  `stopien_naukowy` varchar(255),
  `adres_email` varchar(255),
  `godz_konsultacji` varchar(255),
  `numer_telefonu` varchar(255)
);

CREATE TABLE `wizytowka` (
  `id` int AUTO_INCREMENT PRIMARY KEY,
  `uzytkownik_id` int
);

CREATE TABLE `urzadzenie` (
  `id` int AUTO_INCREMENT PRIMARY KEY,
  `pobor_pradu` int,
  `pojemnosc_bat` int,
  `sala_id` int,
  `czas_dzialanie` int,
  `nazwa` varchar(255),
  `ilosc_wizytowek` int
);

'ALTER TABLE `uzytkownik` ADD FOREIGN KEY (`id`) REFERENCES `sala` (`uzytkownik_id`);'
ALTER TABLE `sala` ADD FOREIGN KEY (`uzytkownik_id`) REFERENCES `uzytkownik` (`id`);

ALTER TABLE `wizytowka` ADD FOREIGN KEY (`uzytkownik_id`) REFERENCES `uzytkownik` (`id`);

ALTER TABLE `urzadzenie` ADD FOREIGN KEY (`sala_id`) REFERENCES `sala` (`id`);
