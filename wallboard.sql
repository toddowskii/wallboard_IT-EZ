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
(1, 'System maintenance scheduled for March 20th.', '2025-03-15'),
(2, 'New company policy updates available in the portal.', '2025-03-16'),
(3, 'Upcoming team-building event on April 5th.', '2025-03-17'),
(4, 'Reminder: Quarterly performance reviews start next week.', '2025-03-18'),
(5, 'Security update: Please reset your passwords.', '2025-03-19'),
(6, 'Office renovation will start next Monday.', '2025-03-20'),
(7, 'New training materials have been uploaded.', '2025-03-21'),
(8, 'Don’t forget to submit your expense reports.', '2025-03-22'),
(9, 'Health and wellness seminar on April 10th.', '2025-03-23'),
(10, 'Company picnic scheduled for May 1st.', '2025-03-24');

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
(1, '2025-03-20', 'Monthly Team Review'),
(2, '2025-03-25', 'Project X Progress Check'),
(3, '2025-04-01', 'Sales Strategy Planning'),
(4, '2025-04-05', 'HR Policy Updates'),
(5, '2025-04-10', 'Finance Quarterly Report'),
(6, '2025-04-15', 'Customer Feedback Analysis'),
(7, '2025-04-20', 'Operations Optimization Meeting'),
(8, '2025-04-22', 'New Product Launch Discussion'),
(9, '2025-04-25', 'Legal Compliance Review'),
(10, '2025-05-01', 'IT System Upgrade Planning'),
(11, '2025-05-05', 'Team Building and Culture Development'),
(12, '2025-05-10', 'Market Expansion Discussion'),
(13, '2025-05-15', 'Supply Chain Efficiency Meeting'),
(14, '2025-05-18', 'Customer Service Excellence Strategy'),
(15, '2025-05-20', 'Internal Communication Improvement'),
(16, '2025-05-25', 'R&D Future Innovations'),
(17, '2025-06-01', 'Product Quality Control Review'),
(18, '2025-06-05', 'Leadership Development Program'),
(19, '2025-06-10', 'Budget Allocation Review'),
(20, '2025-06-15', 'Brand Positioning Strategy');

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
(1, 'Success is not final, failure is not fatal: It is the courage to continue that counts.'),
(2, 'The only way to do great work is to love what you do.'),
(3, 'Believe you can and you\'re halfway there.'),
(4, 'The future belongs to those who believe in the beauty of their dreams.'),
(5, 'It does not matter how slowly you go as long as you do not stop.'),
(6, 'Don\'t watch the clock; do what it does. Keep going.'),
(7, 'Success usually comes to those who are too busy to be looking for it.'),
(8, 'Opportunities don\'t happen, you create them.'),
(9, 'The best way to predict the future is to create it.'),
(10, 'You only live once, but if you do it right, once is enough.'),
(11, 'Success is the sum of small efforts, repeated day in and day out.'),
(12, 'Hardships often prepare ordinary people for an extraordinary destiny.'),
(13, 'The only limit to our realization of tomorrow is our doubts of today.'),
(14, 'The way to get started is to quit talking and begin doing.'),
(15, 'Everything you\'ve ever wanted is on the other side of fear.'),
(16, 'If you can dream it, you can do it.'),
(17, 'Do not wait to strike till the iron is hot, but make it hot by striking.'),
(18, 'A goal without a plan is just a wish.'),
(19, 'What lies behind us and what lies before us are tiny matters compared to what lies within us.'),
(20, 'Life is 10% what happens to us and 90% how we react to it.');

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
(1, 'Marketing', 'Increase brand awareness by 15%', 75, 1, 1),
(2, 'Sales', 'Achieve $1M in sales this quarter', 60, 2, 2),
(3, 'Development', 'Complete project X by end of Q2', 80, 3, 3),
(4, 'HR', 'Hire 5 new team members by next month', 70, 4, 4),
(5, 'Finance', 'Reduce operational costs by 10%', 85, 5, 5);

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
