<!doctype html>
<html>
<head>
<title>Чтение из базы</title>
<meta charset="utf-8">
<style>
.error {color: red; font-size: 1.2em;}
</style>
</head>
<body>
<?php
 if (!empty($_POST['sections']) && !empty($_POST['ordernum']))
 {
try {
 $db = new PDO("mysql:host=localhost;dbname=ryilov", "ryilov", "xEqUye4a",
array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''));
 }
catch(PDOException $e)
 {
 echo $e->getMessage();
 die("Ошибка подключения.");
 }
$section = $_POST['sections'];
$ordern = $_POST['ordernum'];
$stmt = $db->prepare('INSERT INTO sections (s_name, s_order) VALUES
(:section, :ordern)');
$stmt->bindParam(':section', $section);
$stmt->bindParam(':ordern', $ordern);
if ($stmt->execute()) {echo "Данные успешно сохранены.";}
else {
 echo "Ошибка сохранения данных: "; print_r($stmt->errorInfo());
}
}
 else { echo "<p class=\"error\">Должны быть заполнены все поля.</p>"; }
//empty
?>
<p><a href="lab8_2.php">Вернуться к форме</a></p>
</body>
</html>