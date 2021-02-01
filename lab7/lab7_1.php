<!doctype html>
<html>
<head>
<title>Lab7_1</title>
<meta charset="utf-8">
<style>
input[type=text], textarea, select {width: 350px; padding: 5px;}
input[type=submit] {width: 100px; border-radius: 2px; padding: 5px; border:
1px solid #ffa71c; background: #ffbe32; color: #fff}
table {width: 600px; border: 1px solid #ccc; border-collapse: collapse;
margin: 10px; float: left;}
td, th {padding: 5px; border: 1px solid #ccc;}
th {font-weight: bold; background: #e3edf7}
.main_form {
float: left;
width: 140px;
padding: 10px;
margin: 10px;
border-radius: 5px;
border: 1px solid #ffa71c;
background: #fff4a1;
}
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
?>

<form class = "main_form" action="lab7_1.php" method="post">
<p><b>Выберите неделю</b></p>
    <p><input checked name="week" type="radio" value="first"> Первая неделя</p>
    <p><input name="week" type="radio" value="second"> Вторая неделя</p>
<input type="submit" value="Отправить">
</form>
<table class ="tab">
<thead>
<tr><th>Неделя</th><th>День</th><th>Пара</th><th>Преподователь</th><th>Аудитория</th><th>Дисциплина</th></tr>
</thead>


<?php
if ($_SERVER['REQUEST_METHOD'] != 'POST'){
	$sql = "select * 
from lab6_0schedule
inner join lab6_0audience on lab6_0schedule.audience = lab6_0audience.id_aud 
inner join lab6_0teachers on lab6_0schedule.audience = lab6_0teachers.id_tea 
inner join lab6_0discipline on lab6_0schedule.audience = lab6_0discipline.id_dis
inner join lab6_0days on lab6_0schedule.day = lab6_0days.id_day
order by level";
$result = $db->query($sql);

while ($row = $result->fetch()) {
echo "<tr><td>$row[week]</td><td>$row[nameday]</td><td>$row[lesson]</td><td>$row[fio]</td><td>$row[housing] $row[number]</td><td>$row[name]</td></tr>";
}

} else {
	
if($_POST['week']=="first"){
$week = "1";
}
if($_POST['week']=="second"){
$week = "2";
}

$sql = "select * 
from lab6_0schedule
inner join lab6_0audience on lab6_0schedule.audience = lab6_0audience.id_aud 
inner join lab6_0teachers on lab6_0schedule.audience = lab6_0teachers.id_tea 
inner join lab6_0discipline on lab6_0schedule.audience = lab6_0discipline.id_dis
inner join lab6_0days on lab6_0schedule.day = lab6_0days.id_day
where week = ".$week." 
order by level";
$result = $db->query($sql);

while ($row = $result->fetch()) {
echo "<tr><td>$row[week]</td><td>$row[nameday]</td><td>$row[lesson]</td><td>$row[fio]</td><td>$row[housing] $row[number]</td><td>$row[name]</td></tr>";
}

}
?>
</table>
</body>
</html>
