<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        table {
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid lightgreen;
            border-collapse: collapse;
        }

        td {
            padding: 5px;
        }

        a {
            background: #ffffff none repeat scroll 0 0;
            border: 1px solid #aa8d56;
            color: #aa8d56;
            outline: medium none;
            padding: 15px;
            text-decoration: none;
            display: inline-block;
            margin: 10px;
        }
    </style>

</head>
<body>

    <form method="post">
        <label >
            X <input type="text" name="x">
        </label>
        <label >
            Y <input type="text" name="y">
        </label>
        <label >
            Z <input type="text" name="z">
        </label>
        <input type="submit" value="Цвет">
    </form>


    <?php
        $file = "array2.txt";
        if (!file_exists($file)) {
            echo "Файл не найден(";
            return;
        }

        $array = Array();

        echo "<table>";
            foreach (file($file) as $line) {
                $data = explode(" ", trim($line));
                $row = Array();

                echo "<tr>";
                    foreach ($data as $num) {
                        array_push($row, intval($num));
                        echo "<td>{$num}</td>";
                    }
                echo "</tr>";

                array_push($array, $row);
            }
        echo "</table>";
        
        if($_SERVER['REQUEST_METHOD'] == 'POST') {
            $x = intval($_POST['x']); 
            $y = intval($_POST['y']); 
            $z = intval($_POST['z']);

            echo "<br>A [$x, $y]<br>B ($y, $z]";
            
            echo "<table class=\"color\">";
                foreach($array as $key=>$value) {
                    echo "<tr>";
                    foreach($value as $key2 => $val) {
                        if ($val >= $x && $val <= $y) {
                            echo "<td style=\"background-color: #7fc7ff;\">{$val}</td>";
                        } elseif ($val > $y && $val <= $z) {
                            echo "<td style=\"background-color: #fde910;\">{$val}</td>";
                        } else {
                            echo "<td>{$val}</td>";
                        }
                    }
                    echo "</tr>";
                };
            echo "</table>";
        }        
    ?>

</body>
</html>
