<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spotkania</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="style.css">
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
            <h1>Spotkania</h1>
            <div id="time">czas</div>
        </header>
        
        <section id="right">
            <table>
                <tr>
                    <th>Data spotkania</th>
                    <th>Temat spotkania</th>
                </tr>
                <?php
                    $conn = mysqli_connect("localhost","root", "", "wallboard_db");
                    $sql = "SELECT t.meetingDate, t.subject FROM tbmeetings AS t;";
                    $result = mysqli_query($conn, $sql);
                    while ($row = mysqli_fetch_array($result))
                    {
                        echo "<tr>";
                        echo "<td>".$row["meetingDate"]."</td><td>".$row["subject"]."</td>";
                        echo "</tr>";
                    }

                    mysqli_close($conn);
                ?>
            </table>
        </section>
    </section>
    <script>
        window.onload = function() {
            const now = new Date();
            var czas = document.getElementById("time");
            let czasteraz = now.toLocaleTimeString(); 
            czas.innerHTML = czasteraz;
        }
    </script>
</body>
</html>