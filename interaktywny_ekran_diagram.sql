CREATE TABLE `sala` (
  `id` int PRIMARY KEY,
  `numer_sali` int,
  `pietro` int,
  `uzytkownik_id` int
);

CREATE TABLE `uzytkownik` (
  `id` int PRIMARY KEY,
  `imie` varchar(255),
  `nazwisko` varchar(255),
  `stopien_naukowy` varchar(255),
  `adres_email` varchar(255),
  `godz_konsultacji` varchar(255)
);

CREATE TABLE `wizytowka` (
  `id` int PRIMARY KEY,
  `uzytkownik_id` int
);

CREATE TABLE `urzadzenie` (
  `id` int,
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
