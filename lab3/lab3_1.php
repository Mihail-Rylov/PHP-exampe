<!doctype html>
<html lang="ru">
<head>
<title>2.1</title>
<meta charset="utf-8">
<style>
table { border: 1px solid olive; width: 350px; border-collapse: collapse}
td {padding: 3px; border: 1px solid olive; }
tr:first-child td {font-weight: bold;}
tr { text-align: center; }
</style>
</head>
<body>
<table>
<tr><td>Число</td><td>Квадрат</td><td>Куб</td><td>Корень<td/></tr>
<?php
for($i=1;$i<=20;$i++)
{
echo "<tr ><td>".$i."</td><td>".$i*$i."</td><td>".$i*$i*$i."</td><td>".sqrt($i)."</td></tr>";
}
?>
</table>
</body>
</html>