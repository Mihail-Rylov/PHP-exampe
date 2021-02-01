<!doctype html>
<html>
<head>
<title>Lab7_2</title>
<meta charset="utf-8">
<style>
table {width: 400px; border: 1px solid #ccc; border-collapse: collapse;}
td, th {padding: 5px; border: 1px solid #ccc;}
th {font-weight: bold; font-size: 120%;}
.letters {padding: 3px; margin-bottom: 5px;}
.letters a {padding-right: 10px;}
</style>
</head>
<body>
<?php
try {
$db = new PDO("mysql:host=localhost;dbname=ryilov", "ryilov", "xEqUye4a",
array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'UTF8'"));
}
catch(PDOException $e)
{
echo $e->getMessage();
die("Ошибка подключения.");
}

$sql = "select *
from sections
order by id";

if(isset($_GET['sort'])) {
	if($_GET['sort'] == "number"){
	$sort = "id";}
	if($_GET['sort'] == "razdel"){
	$sort = "s_name";}
$sql = "select * 
from sections 
order by ".$sort;
 }
$result = $db->query($sql)->fetchAll();
?>
<table>
<thead>
<tr><th><a href = "lab7_2.php?sort=number">Номер</a></th><th><a href = "lab7_2.php?sort=razdel">Раздел</a></th></tr>
</thead>
<?php
foreach($result as $row) {
echo "<tr><td>$row[0]</td><td>$row[1]</td></tr>";
}
?>
</table>
</body>
</html>