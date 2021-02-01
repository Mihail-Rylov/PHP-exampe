<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>lab 4.4</title>
</head>
<body>

<?php 
    $file = 'test_strings.txt';
    define("divider", "|"); 
    $logdate= date("d.m.y G:i:s"); 
    $serviceNumber = 898820; 
    $person = "John Smith";
    $log = $logdate . divider .  $serviceNumber . divider . $person  . "\n";
    if ($bytes = file_put_contents($file, $log, FILE_APPEND | LOCK_EX)) 
        echo "Успешная запись $bytes байт"; 

    $fullname = realpath($file); 
    echo "<p>Файл $fullname содержит данные</p>";

    if ($content = file_get_contents($file)) echo "<p>Успешное чтение ".strlen($content)." байт</p>";

    foreach (file($file) as $line) echo "<p>".$line.'</p>';
?>

</body>
</html>