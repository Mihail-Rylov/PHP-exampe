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
if (isset($_POST['sections'])){
 if (!empty($_POST['fio']) && !empty($_POST['t_area'])&& !empty($_POST['t_area']))
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
$fio = $_POST['fio'];
$title = $_POST['title'];
$message = $_POST['t_area'];
$stmt = $db->prepare('INSERT INTO messages (section_id, fio, title, message) VALUES
(:section, :fio, :title, :message)');
$stmt->bindParam(':section', $section, PDO::PARAM_INT);
$stmt->bindParam(':fio', $fio);
$stmt->bindParam(':title', $title);
$stmt->bindParam(':message', $message);
if ($stmt->execute()) {echo "Данные успешно сохранены.";}
else {
 echo "Ошибка сохранения данных: "; print_r($stmt->errorInfo());
}
}
 else { echo "<p class=\"error\">Должны быть заполнены все поля.</p>"; }
//empty
}
 else { echo "<p class=\"error\">Данных нет. Сначала откройте форму.</p>"; }
//isset
?>
<p><a href="lab8_2.php">Вернуться к форме</a></p>
</body>
</html>