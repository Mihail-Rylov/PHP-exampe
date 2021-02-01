<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>lab 4.5</title>

    <style>
        form>label {
            display: block;
            margin: 5px 10px;
        }

        input {
            padding: 2px;
        }

        fieldset {
            width: 150px;
            margin: 1.5em;
        }

        input[type="submit"] {
            border: 1px solid #a325000;
            background: #efe4bd;
            margin: 5px 10px;
            padding: 4px;
        }

        .error {
            color: red;
            font-size: 1.5em;
        }

        p {
            font-size: 1.3em;
        }

        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        td {
            padding: 5px;
        }

    </style>

</head>
<body>
    <form action="lab4_5.php" method="post">
        <label>ФИО: <input type="text" name="name"></label>
        <label>
            Факультет: 
            <select name="faculty">
                <option value="Факульет 1">Факульет 1</option>
                <option value="Факульет 2">Факульет 2</option>
                <option value="Факульет 3">Факульет 3</option>
                <option value="Факульет 4">Факульет 4</option>
                <option value="Факульет 5">Факульет 5</option>
            </select>
        </label>

        <label>
            Пол: 
            <input type="radio" value="male" name="gender" checked>male
            <input type="radio" value="female" name="gender">female
        </label>

        <input type="submit" value="Записать в файл">
    </form>
    
    <?php
        $file = "lab4/text";
        define("divider", "|"); 

        if($_SERVER['REQUEST_METHOD'] == 'POST') {
            $faculty = $_POST['faculty']; 
            $name = $_POST['name']; 
            $gender = $_POST['gender'];
            
            $log = $name.divider.$faculty.divider.$gender."\n";
            if ($bytes = file_put_contents($file, $log, FILE_APPEND | LOCK_EX)) echo "Успешная запись $bytes байт";
        }

        echo "<table>";
            echo "<tr><td>ФИО</td><td>Факультет</td><td>Пол</td></tr>";
            foreach (file($file) as $line) {
                $data = explode(divider, $line);
                echo "<tr><td>".$data[0]."</td><td>".$data[1]."</td><td>".$data[2]."</td></tr>";
            }
        echo "</table>";
    ?>

</body>
</html>