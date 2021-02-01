<!doctype html>
<html lang="ru">
<head><title>3.3</title>
    <meta charset="utf-8">
    <style> html {
            font-family: "helvetica, sans-serif";
            font-size: 1.2em;
        }

        p {
            line-height: 1em;
        } </style>
</head>
<body> <?php $S = "Рылов Михаил Леонидович";
$P = "янва";
$p_string = iconv("utf-8", "windows-1251", $P);
$s_string = iconv("utf-8", "windows-1251", $S);
$counter = 0;
$counter_all = 0;
$counter0 = 0;
$counter1 = 0;
$counter2 = 0;
$counter3 = 0;
$len = strlen($s_string);
for ($i = 0; $i < $len; $i = $i + 2)
    if ($p_string[0] == $s_string[$i] || $p_string[1] == $s_string[$i] || $p_string[2] == $s_string[$i]  || $p_string[3] == $s_string[$i]) {
        $counter++;
        //printf("<p>Позиция: %d, символ %s</p>", $i, iconv("windows-1251", "utf-8", $s_string[$i]));
    }
	
for ($i = 0; $i < $len; $i++)
{
    if ($p_string[0] == $s_string[$i] || $p_string[1] == $s_string[$i] || $p_string[2] == $s_string[$i]  || $p_string[3] == $s_string[$i]) 
	{
        $counter_all++;
		switch ($s_string[$i])
		{
			case $p_string[0]: $counter0++; break;
			case $p_string[1]: $counter1++; break;
			case $p_string[2]: $counter2++; break;
			case $p_string[3]: $counter3++; break;
		}
        //printf("<p>Позиция: %d, символ %s</p>", $i, iconv("windows-1251", "utf-8", $s_string[$i]));
    }
}
echo "<p>S: " . $S . "</p>";
echo "<p>P: " . $P . "</p>";
echo "общее количество вхождений символов P в S: " . $counter_all . "<br>";
echo "количество вхождений P в S для чётных символов в S: " . $counter . "<br>";
echo "количество вхождений каждого символа отдельно из P в S:<br>";

echo iconv("windows-1251", "utf-8", $p_string[0]) . ": " . $counter0 . "<br>";
echo iconv("windows-1251", "utf-8", $p_string[1]) . ": " . $counter1 . "<br>";
echo iconv("windows-1251", "utf-8", $p_string[2]) . ": " . $counter2 . "<br>";
echo iconv("windows-1251", "utf-8", $p_string[3]) . ": " . $counter3 . "<br>";
//echo "<p><em>Всего найдено символов: " . $counter . "</em></p>"; ?> </body>
</html>
