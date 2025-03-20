-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Mar 2025, 14:30
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wallboard`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tbannouncements`
--

CREATE TABLE `tbannouncements` (
  `IdAnnouncement` int(11) NOT NULL,
  `description` text NOT NULL,
  `dateAdding` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tbannouncements`
--

INSERT INTO `tbannouncements` (`IdAnnouncement`, `description`, `dateAdding`) VALUES
(1, 'Planowana konserwacja systemu na 20 marca.', '2025-03-15'),
(2, 'Nowe aktualizacje polityki firmy dostępne w portalu.', '2025-03-16'),
(3, 'Nadchodzące wydarzenie integracyjne zespołu 5 kwietnia.', '2025-03-17'),
(4, 'Przypomnienie: Przeglądy kwartalne wydajności rozpoczynają się w przyszłym tygodniu.', '2025-03-18'),
(5, 'Aktualizacja zabezpieczeń: Proszę zresetować hasła.', '2025-03-19'),
(6, 'Remont biura rozpocznie się w najbliższy poniedziałek.', '2025-03-20'),
(7, 'Nowe materiały szkoleniowe zostały przesłane.', '2025-03-21'),
(8, 'Nie zapomnij przesłać swoich raportów wydatków.', '2025-03-22'),
(9, 'Seminarium o zdrowiu i wellness 10 kwietnia.', '2025-03-23'),
(10, 'Firmowy piknik zaplanowany na 1 maja.', '2025-03-24');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tbemployees`
--

CREATE TABLE `tbemployees` (
  `IdEmployee` int(11) NOT NULL,
  `firstName` text NOT NULL,
  `scndName` text NOT NULL,
  `age` int(11) NOT NULL,
  `teamID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tbemployees`
--

INSERT INTO `tbemployees` (`IdEmployee`, `firstName`, `scndName`, `age`, `teamID`) VALUES
(1, 'John', 'Doe', 30, 1),
(2, 'Jane', 'Smith', 28, 2),
(3, 'Alex', 'Johnson', 35, 3),
(4, 'Emily', 'Davis', 40, 4),
(5, 'Michael', 'Brown', 25, 5),
(6, 'Sophia', 'Wilson', 32, 1),
(7, 'David', 'Martinez', 27, 2),
(8, 'Olivia', 'Taylor', 29, 3),
(9, 'Daniel', 'Anderson', 33, 4),
(10, 'Emma', 'Thomas', 26, 5),
(11, 'Lucas', 'White', 31, 1),
(12, 'Lily', 'Harris', 24, 2),
(13, 'James', 'Clark', 38, 3),
(14, 'Isabella', 'Lewis', 34, 4),
(15, 'Benjamin', 'Walker', 29, 5),
(16, 'Mia', 'Young', 36, 1),
(17, 'Ethan', 'King', 28, 2),
(18, 'Charlotte', 'Scott', 30, 3),
(19, 'Amelia', 'Adams', 27, 4),
(20, 'William', 'Nelson', 25, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tbemployeesmeetings`
--

CREATE TABLE `tbemployeesmeetings` (
  `IdEmployee` int(11) NOT NULL,
  `IdMetings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tbemployeesmeetings`
--

INSERT INTO `tbemployeesmeetings` (`IdEmployee`, `IdMetings`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(1, 2),
(2, 2),
(3, 2),
(6, 2),
(9, 2),
(4, 3),
(5, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(6, 5),
(15, 5),
(16, 5),
(17, 5),
(18, 5),
(2, 6),
(5, 6),
(7, 6),
(8, 6),
(19, 6),
(3, 7),
(9, 7),
(10, 7),
(14, 7),
(20, 7),
(4, 8),
(11, 8),
(13, 8),
(15, 8),
(16, 8),
(1, 9),
(6, 9),
(7, 9),
(10, 9),
(12, 9),
(13, 10),
(14, 10),
(17, 10),
(19, 10),
(20, 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tbmeetings`
--

CREATE TABLE `tbmeetings` (
  `IdMeeting` int(11) NOT NULL,
  `meetingDate` date NOT NULL,
  `subject` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tbmeetings`
--

INSERT INTO `tbmeetings` (`IdMeeting`, `meetingDate`, `subject`) VALUES
(1, '2025-03-20', 'Miesięczny przegląd zespołu'),
(2, '2025-03-25', 'Kontrola postępów Projektu X'),
(3, '2025-04-01', 'Planowanie strategii sprzedaży'),
(4, '2025-04-05', 'Aktualizacje polityki HR'),
(5, '2025-04-10', 'Kwartalny raport finansowy'),
(6, '2025-04-15', 'Analiza opinii klientów'),
(7, '2025-04-20', 'Spotkanie optymalizacyjne operacji'),
(8, '2025-04-22', 'Dyskusja o wprowadzeniu nowego produktu'),
(9, '2025-04-25', 'Przegląd zgodności prawnej'),
(10, '2025-05-01', 'Planowanie modernizacji systemu IT'),
(11, '2025-05-05', 'Budowanie zespołu i rozwój kultury organizacyjnej'),
(12, '2025-05-10', 'Dyskusja o ekspansji rynkowej'),
(13, '2025-05-15', 'Spotkanie dotyczące efektywności łańcucha dostaw'),
(14, '2025-05-18', 'Strategia doskonałości obsługi klienta'),
(15, '2025-05-20', 'Poprawa komunikacji wewnętrznej'),
(16, '2025-05-25', 'Innowacje na przyszłość w R&D'),
(17, '2025-06-01', 'Przegląd kontroli jakości produktu'),
(18, '2025-06-05', 'Program rozwoju przywództwa'),
(19, '2025-06-10', 'Przegląd alokacji budżetu'),
(20, '2025-06-15', 'Strategia pozycjonowania marki');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tbquotes`
--

CREATE TABLE `tbquotes` (
  `IdQuotes` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tbquotes`
--

INSERT INTO `tbquotes` (`IdQuotes`, `description`) VALUES
(1, 'Sukces nie jest ostateczny, porażka nie jest śmiertelna: liczy się odwaga, by kontynuować.'),
(2, 'Jedyny sposób na wspaniałą pracę to kochać to, co się robi.'),
(3, 'Uwierz, że możesz, a już jesteś w połowie drogi.'),
(4, 'Przyszłość należy do tych, którzy wierzą w piękno swoich marzeń.'),
(5, 'Nie ma znaczenia, jak wolno idziesz, dopóki się nie zatrzymujesz.'),
(6, 'Nie patrz na zegar; rób to, co on. Idź dalej.'),
(7, 'Sukces zwykle przychodzi do tych, którzy są zbyt zajęci, by go szukać.'),
(8, 'Okazje się nie zdarzają, to ty je tworzysz.'),
(9, 'Najlepszy sposób na przewidzenie przyszłości to jej stworzenie.'),
(10, 'Żyje się tylko raz, ale jeśli robisz to dobrze, ten raz wystarczy.'),
(11, 'Sukces to suma małych wysiłków, powtarzanych dzień po dniu.'),
(12, 'Trudności często przygotowują zwykłych ludzi do niezwykłego przeznaczenia.'),
(13, 'Jedynym ograniczeniem naszej przyszłości są nasze dzisiejsze wątpliwości.'),
(14, 'Droga do sukcesu zaczyna się od przestania mówienia i rozpoczęcia działania.'),
(15, 'Wszystko, czego kiedykolwiek pragnąłeś, znajduje się po drugiej stronie strachu.'),
(16, 'Jeśli możesz to sobie wymarzyć, możesz to zrobić.'),
(17, 'Nie czekaj, aż żelazo stanie się gorące – rozgrzej je, uderzając.'),
(18, 'Cel bez planu to tylko życzenie.'),
(19, 'To, co za nami i to, co przed nami, jest niczym w porównaniu do tego, co jest w nas.'),
(20, 'Życie to w 10% to, co nam się przydarza, a w 90% to, jak na to reagujemy.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tbteams`
--

CREATE TABLE `tbteams` (
  `IdTeam` int(11) NOT NULL,
  `nameTeam` text NOT NULL,
  `goal` text NOT NULL,
  `goalPercentage` float NOT NULL,
  `quoteID` int(11) NOT NULL,
  `announcementID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tbteams`
--

INSERT INTO `tbteams` (`IdTeam`, `nameTeam`, `goal`, `goalPercentage`, `quoteID`, `announcementID`) VALUES
(1, 'Marketing', 'Zwiększyć świadomość marki o 15%', 75, 1, 1),
(2, 'Sprzedaż', 'Osiągnąć 1 mln USD sprzedaży w tym kwartale', 60, 2, 2),
(3, 'Rozwój', 'Zakończyć projekt X do końca drugiego kwartału', 80, 3, 3),
(4, 'HR', 'Zatrudnić 5 nowych członków zespołu do przyszłego miesiąca', 70, 4, 4),
(5, 'Finanse', 'Zmniejszyć koszty operacyjne o 10%', 85, 5, 5);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `tbannouncements`
--
ALTER TABLE `tbannouncements`
  ADD PRIMARY KEY (`IdAnnouncement`);

--
-- Indeksy dla tabeli `tbemployees`
--
ALTER TABLE `tbemployees`
  ADD PRIMARY KEY (`IdEmployee`),
  ADD KEY `teamID` (`teamID`);

--
-- Indeksy dla tabeli `tbemployeesmeetings`
--
ALTER TABLE `tbemployeesmeetings`
  ADD PRIMARY KEY (`IdMetings`,`IdEmployee`),
  ADD KEY `IdEmployee` (`IdEmployee`);

--
-- Indeksy dla tabeli `tbmeetings`
--
ALTER TABLE `tbmeetings`
  ADD PRIMARY KEY (`IdMeeting`);

--
-- Indeksy dla tabeli `tbquotes`
--
ALTER TABLE `tbquotes`
  ADD PRIMARY KEY (`IdQuotes`);

--
-- Indeksy dla tabeli `tbteams`
--
ALTER TABLE `tbteams`
  ADD PRIMARY KEY (`IdTeam`),
  ADD KEY `cytatID` (`quoteID`),
  ADD KEY `announcementID` (`announcementID`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `tbemployees`
--
ALTER TABLE `tbemployees`
  ADD CONSTRAINT `tbemployees_ibfk_1` FOREIGN KEY (`teamID`) REFERENCES `tbteams` (`IdTeam`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `tbemployeesmeetings`
--
ALTER TABLE `tbemployeesmeetings`
  ADD CONSTRAINT `tbemployeesmeetings_ibfk_1` FOREIGN KEY (`IdMetings`) REFERENCES `tbmeetings` (`IdMeeting`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbemployeesmeetings_ibfk_2` FOREIGN KEY (`IdEmployee`) REFERENCES `tbemployees` (`IdEmployee`);

--
-- Ograniczenia dla tabeli `tbteams`
--
ALTER TABLE `tbteams`
  ADD CONSTRAINT `tbteams_ibfk_2` FOREIGN KEY (`quoteID`) REFERENCES `tbquotes` (`IdQuotes`),
  ADD CONSTRAINT `tbteams_ibfk_3` FOREIGN KEY (`announcementID`) REFERENCES `tbannouncements` (`IdAnnouncement`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
