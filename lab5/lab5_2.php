<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
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

    <?php
        if (file_exists("array2.txt")) {
            //unlink("array2.txt");
	    file_put_contents("array2.txt", "");
	}

        $row_num = rand(5, 20);
        $col_num = rand(5, 20);

        $array = Array();

        for ($i = 0; $i < $row_num; $i++){
            $row = Array();
            for ($j = 0; $j < $col_num; $j++){
                $rand_num = rand(1, 100);
                file_put_contents("array2.txt", "{$rand_num} ", FILE_APPEND | LOCK_EX);
                array_push($row, $rand_num);
            }

            array_push($array, $row);

            if ($i != $row_num - 1) 
                file_put_contents("array2.txt", "\n", FILE_APPEND | LOCK_EX);
        }

        echo "<table>";
            foreach($array as $key=>$value)
            {
                echo "<tr>";
                foreach($value as $key2 => $value2)
                    echo "<td>{$value2}</td>";
                echo "</tr>";
            };
        echo "</table>";
    ?>

</body>
</html>
