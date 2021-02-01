<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>lab 3.4</title>
</head>
<body>
    <form action="lab3_4.php" method="post">
        <p>Строка: <input type="text" name="S"></p>
        <p><input type="submit" value="Определить"></p>
    </form>

    <?php
        if($_SERVER['REQUEST_METHOD'] == 'POST') {
            $S = $_POST['S']; 

            echo $S."<br>";
            
            for($i=0; $i<strlen($S); $i++){ 
                if (is_numeric($S[$i])) echo $S[$i]." ";
            }
        }
    ?>

</body>
</html>
