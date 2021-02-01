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
            border: 1px solid black;
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

    <?php

        function array_flatten($array) {
            $return = array();
            foreach ($array as $key => $value) {
                if (is_array($value)){
                    $return = array_merge($return, array_flatten($value));
                } else {
                    $return[$key] = $value;
                }
            }

            return $return;
        };

        function print_matrix($array, $col_number) {
            $chunks = array_chunk($array, $col_number);
            echo "<table>";
                foreach($chunks as $key=>$value) {
                    echo "<tr>";
                    foreach($value as $key2 => $value2)
                        echo "<td>{$value2}</td>";
                    echo "</tr>";
                };
            echo "</table>";
        };

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
        
        echo "<a href=\"lab5_3.php\" class=\"button\">По возрастанию</a>";
        echo "<a href=\"lab5_3.php?desc\" class=\"button\">По убыванию</a>";

        $col_num = count($array) > 0 ? count($array[0]) : 0;
        $flat_array = array_flatten($array);


        if (array_key_exists('desc', $_GET)) {
            rsort($flat_array);
        } else {
            sort($flat_array);
        }
        print_matrix($flat_array, $col_num);
    ?>

</body>
</html>
