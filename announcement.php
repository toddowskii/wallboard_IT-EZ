<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spotkanie</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="style.css">
    <script src="time.js" defer></script>
</head>
<body>
    <section id="left">
        <a href="main.php"><i class="bi bi-house-fill"></i> Strona główna</a><br>
        <a href="workers.php"><i class="bi bi-person-fill"></i> Pracownicy</a><br>
        <a href="announcement.php"><i class="bi bi-megaphone-fill"></i> Ogłoszenia</a><br>
        <a href="teams.php"><i class="bi bi-people-fill"></i> Zespoły</a><br>
        <a href="meeting.php"><i class="bi bi-calendar2-date-fill"></i> Spotkania</a><br>
    </section>

    <section id="main">
        <header>
            <h1>Spotkanie</h1>
            <div id="time">czas</div>
        </header>
        
        <section id="right">
            <table>
                <tr>
                    <th>Treść ogłoszenia</th>
                    <th>Data dodania</th>
                </tr>
                <?php
                    $conn = mysqli_connect("localhost","root", "", "wallboard_db");
                    $sql = "SELECT t.description, t.dateAdding FROM tbannouncements AS t;";
                    $result = mysqli_query($conn, $sql);
                    while ($row = mysqli_fetch_array($result))
                    {
                        echo "<tr>";
                        echo "<td>".$row["description"]."</td><td>".$row["dateAdding"]."</td>";
                        echo "</tr>";
                    }

                    mysqli_close($conn);
                ?>

            </table>
        </section>
    </section>
</body>
</html>
