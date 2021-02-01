<!doctype html>
<html>
<head>
<title>Задание 5</title>
<meta charset="utf-8">
<style>
table { border-collapse: collapse }
td, th { padding: 5px; border: 1px solid black }
</style>
</head>
<body>
<?php
$content = explode("\n", file_get_contents("/home/web/public_html/lab5_5.txt"));
foreach($content as $i => $line) {
	$inner_arr = explode("|", $line);
	$name = explode(" ", $inner_arr[0]);
	$name_str = "$name[0] " . mb_substr($name[1], 0, 1)  . ". ";
	if(count($name) > 2) $name_str .= mb_substr($name[2], 0, 1) . ".";
	$content[$i] = [
	"NAME" => $name_str,
	"POSITION" => $inner_arr[1],
	"DEPARTMENT" => $inner_arr[2]
	];
}
echo "<pre>";
print_r($content);
echo "</pre>";
foreach($content as $i => $line) {
	$content[$i] = implode(":", $line);
}
file_put_contents("lab5_5_new.txt", iconv('utf-8', 'windows-1251', implode("\n", $content)));
echo "<table><tr><th>NAME</th><th>POSITION</th><th>DEPARTMENT</th></tr>";
foreach($content as $line) {
	echo "<tr>";
	foreach(explode(":", $line) as $element) {
		echo "<td>$element</td>";
	}
	echo "</tr>";
}
?>
</table>
</body>
</html>