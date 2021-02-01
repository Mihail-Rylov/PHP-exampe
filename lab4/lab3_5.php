<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>lab 3.5</title>
</head>
<body>
    
    <form action="lab3_5.php" method="post">
        <p>Строка: <input type="text" name="S"></p>
        <p><input type="submit" value="Определить"></p>
    </form>

    <?php
        if($_SERVER['REQUEST_METHOD'] == 'POST') {
            $s = $_POST['S']; 

			if(preg_match("/\d{2}-\d{2}-\d{4} \d{2}:\d{2}:\d{2}/", $s))
			{
				if(date('d-m-Y H:i:s', strtotime($s)) == $s) echo "<p>Формат корректен, данные корректны</p>";
				else echo "<p>Формат корректен, данные некорректны</p>";
			}
		}
			else echo "<p>Формат некорректен, данные не проверяются</p>";
    ?>

</body>
</html>
