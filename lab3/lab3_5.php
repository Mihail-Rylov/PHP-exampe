<!doctype html> 
<html lang="ru"> 
<head> 
	<title>3.5</title> 
	<meta charset="utf-8"> 
</head> 
<body> 
<?php
//$s = "29-02-2019 10:15:01";
$s = ["29-02-2019 10:15:01", "11032019 10:15:01", "11-03-2019 10:15:01"];
//echo "<p>String S: " . $s . "</p>";
for($i = 0; $i < count($s); $i++)
{
	echo "<p>String S: " . $s[$i] . "</p>";
	if(preg_match("/\d{2}-\d{2}-\d{4} \d{2}:\d{2}:\d{2}/", $s[$i]))
	{
		if(date('d-m-Y H:i:s', strtotime($s[$i])) == $s[$i]) echo "<p>Формат корректен, данные корректны</p>";
		else echo "<p>Формат корректен, данные некорректны</p>";
	}
	else echo "<p>Формат некорректен, данные не проверяются</p>";
}
?> </body> </html>