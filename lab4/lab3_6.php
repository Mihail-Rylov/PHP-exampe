<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>lab 3.6</title>
</head>
<body>
    
    <form action="lab3_6.php" method="post">
        <p>Строка: <input type="text" name="S"></p>
        <p><input type="submit" value="Проверить сложность"></p>
    </form>

    <?php
        if($_SERVER['REQUEST_METHOD'] == 'POST') {
            $S = $_POST['S'];
            $symbols = "~!#$%^&*()_-+=?/,.[]{}<>|\\";

            echo $S."<br>";

            $mark = 0;
            $criterion = "";
            $len = strlen($S);

            if ($len < 5) {
                echo "Критерии 1 оценка 0";
                return;
            }

            if ($len <=9 && 5 <= $len) {
                $mark += 1;
                $criterion = "2";
            }

            if ($len <=12 && 10 <= $len) {
                $mark += 2;
                $criterion = "3";
            }

            if ($len > 12) {
                $mark += 3;
                $criterion = "4";
            }
            

            $a = 0;
            $b = 0;
            $c = 0;
            for($i=0; $i<strlen($S); $i++) {
                if(ctype_alpha($S[$i])) $a++;
                if(is_numeric($S[$i])) $b++;
                if(strstr($symbols, $S[$i])) $c++;
            }

            if ( ($b > 0 && $c > 0 && $a == 0) || ($b > 0 && $c == 0 && $a > 0) || ($b == 0 && $c > 0 && $a > 0) ) {
                $mark += 1;
                $criterion .= ", 5(1)";
            }

            if ($b > 0 && $c > 0 && $a > 0) {
                $mark += 2;
                $criterion .= ", 5(2)";
            }


            $b = 0;
            $c = 0;
            for($i=0; $i<strlen($S); $i++) {
                if(ctype_alpha($S[$i]) && ctype_upper($S[$i])) $b++;
                if(ctype_alpha($S[$i]) && ctype_lower($S[$i])) $c++;
            }
            if ($b >= 1 && $c >= 1) {
                $mark += 1;
                $criterion .= ", 6";
            }

            
            $counter = 0;
            for($i=0; $i<strlen($S); $i++) {
                if(strstr($symbols, $S[$i])) $counter++;
            }

            if ($counter > strlen($S) * 0.3) {
                $mark += 2;
                $criterion .= ", 7";
            }

            if (!preg_match("/([0-9]{3,}|[a-z]{3,})/i", $S)) {
                $mark += 2;
                $criterion .= ", 8";
            }
            
            echo "Критерии ".$criterion." оценка ".$mark;

        }
    ?>

</body>
</html>
