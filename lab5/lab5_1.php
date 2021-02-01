<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    
    <?php

        $array = Array(
            'http://ryilov.web.kts/lab3/lab3_1.php' => 'Lab 3.1',
            'http://ryilov.web.kts/lab3/lab3_2.php' => 'Lab 3.2',
            'http://ryilov.web.kts/lab3/lab3_3.php' => 'Lab 3.3',
            'http://ryilov.web.kts/lab3/lab3_4.php' => 'Lab 3.4',
            'http://ryilov.web.kts/lab3/lab3_5.php' => 'Lab 3.5',
            'http://ryilov.web.kts/lab3/lab3_6.php' => 'Lab 3.6',
            'http://ryilov.web.kts/lab4/lab4_1.php' => 'Lab 4.1',
            'http://ryilov.web.kts/lab4/lab4_3.php' => 'Lab 4.3',
            'http://ryilov.web.kts/lab4/lab4_4.php' => 'Lab 4.4',
            'http://ryilov.web.kts/lab4/lab4_5.php' => 'Lab 4.5',
            'http://ryilov.web.kts/lab5/lab5_1.php' => 'Lab 5.1',
            'http://ryilov.web.kts/lab5/lab5_2.php' => 'Lab 5.2',
            'http://ryilov.web.kts/lab5/lab5_3.php' => 'Lab 5.3',
            'http://ryilov.web.kts/lab5/lab5_4.php' => 'Lab 5.4',
        );

        echo '<ul>';
            foreach ($array as $key => $value) {
                echo "<li><a href=\"{$key}\">{$value}</a></li>";
            };
        echo '</ul>';
        
    ?>
</body>
</html>