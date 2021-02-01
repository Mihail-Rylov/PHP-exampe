<!doctype html> 
<html lang="ru"> 
<head> 
	<title>Задание 3</title> 
	<meta charset="utf-8"> 
	<style> 
	html {font-family: "helvetica, sans-serif"; font-size: 1.2em;} 
	p { line-height: 1em; } 
	</style> 
</head> 
<body> 
<?php
//$pass = "Sh*26^0p%?18(";
$pass = ["shdj", "Sh1#", "Shdj", "ShdJ*", "ShdJ129&yu", "She*26^0p%?1("];
for($i = 0; $i < count($pass); $i++)
	{
	$c = 0;
	$len = strlen($pass[$i]);
	$pass_arr = str_split($pass[$i]);
	$other_ch = "~!#$%^&*()_-+=?/,.[]{}<>|\\";
	$other_count = 0;
	echo "<p>Пароль: " . $pass[$i] . "</p>";
	echo "<p>Критерии:</p><ul>";

	if($len > 5) $c++;
	if($len > 9) $c++;
	if($len > 12) $c++;
	echo "<li>" . ($c+1) . "(" . $c . ")</li>";

	$temp = 0;
	if(preg_match("/\d/", $pass[$i])) $temp++;
	if(preg_match("/\w/", $pass[$i])) $temp++;
	foreach($pass_arr as $char) {
		if(strpos($other_ch, $char) !== false) $other_count++;
	}

	if($temp == 3) $temp--;
	$c += $temp;
	echo "<li>5(" . $temp . ")</li>";

	if(preg_match("/[a-z]/", $pass[$i]) && preg_match("/[A-Z]/", $pass[$i])) {
		$c++;
		echo "<li>6(1)</li>";
	}

	if($other_count / $len > 0.3) {
		$c += 2;
		echo "<li>7(2)</li>";
	}

	if(preg_match("/(\w|\d){3,}/", $pass[$i]) == 0) {
		$c += 2;
		echo "<li>8(2)</li>";
	}

	echo "</ul><p>Оценка: " . $c . "/10</p>";
}
?> </body> </html>