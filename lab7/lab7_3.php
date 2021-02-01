<!doctype html>
<html>
<head>
<title>Lab7_2</title>
<meta charset="utf-8">
<style>
table {width: 400px; border: 1px solid #ccc; border-collapse: collapse; float:left; margin-top: 10px;}
td, th {padding: 5px; border: 1px solid #ccc;}
th {font-weight: bold; font-size: 120%;}
.letters {padding: 3px; margin-bottom: 5px;}
.letters a {padding-right: 10px;}
.main_form {
float: left;
width: 160px;
padding: 10px;
margin: 10px;
border-radius: 5px;
border: 1px solid #ffa71c;
background: #fff4a1;}
label {display: block; width: 300px; margin: 5px 0}
input[type=text], textarea, select {width: 160px; padding: 5px;}
input[type=submit] {width: 100px; border-radius: 2px; padding: 5px;
border: 1px solid #ffa71c;
background: #ffbe32;
color: #fff}
</style>
</head>
<body>

<div class="main_form">
<form action="lab7_3.php" method="post">
<label>Сортировать<br/><select name="filter">
<option value="number">По номеру</section>
<option value="razdel">По разделу</section>
</select>
</label>
   <p><b>Тип сортировки</b></p>
    <p><input checked name="sort" type="radio" value="asc"> По возрастанию</p>
    <p><input name="sort" type="radio" value="desc"> По убыванию</p>
<input type="submit" value="Отправить">
</form>
</div>
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

if ($_SERVER['REQUEST_METHOD'] != 'POST' ) {

$sql = "select *
from sections
order by id";

}else{
	
if($_POST['sort'] == "asc"){
	$method = "asc";
	}else{
	$method = "desc";
	}
	
	if($_POST['filter'] == "number"){
	$sort = "id";
	}else{
	$sort = "s_name";
	}

$sql = "select * 
from sections 
order by ".$sort." ".$method;
 
 }
$result = $db->query($sql)->fetchAll();
?>
<table>
<thead>
<tr><th>Номер</th><th>Раздел</th></tr>
</thead>
<?php
foreach($result as $row) {
echo "<tr><td>$row[0]</td><td>$row[1]</td></tr>";
}
?>
</table>
</body>
</html>