<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        form>label {
            display: block;
            margin: 5px 10px;
        }

        input {
            padding: 2px;
        }

        fieldset {
            width: 150px;
            margin: 1.5em;
        }

        input[type="submit"] {
            border: 1px solid #a325000;
            background: #efe4bd;
            margin: 5px 10px;
            padding: 4px;
        }

        .error {
            color: red;
            font-size: 1.5em;
        }

        p {
            font-size: 1.3em;
        }
    </style>

</head>
<body>

<form action="lab4_1.php" method="post">
    <label>
        Операнд 1
        <input type="text" placeholder="Введите первое число" name="op1">
    </label>

    <label>
        Операнд 2
        <input type="text" placeholder="Введите второе число" name="op2">
    </label>

    <label>
        Округлить результат
        <input type="checkbox" name="round">
    </label>

    <fieldset>
        <legend>Вид операции</legend>
        <select name="s1">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
            <option value="sqrt">sqrt</option>
        </select>
    </fieldset>

    <fieldset>
        <legend>Квадратный корень из</legend>
        <label>
            операнда 1
            <input type="radio" value="op1" name="sqrt" checked> 
        </label>
        <label>
            операнда 2
            <input type="radio" value="op2" name="sqrt"> 
        </label>
    </fieldset>

    <input type="submit" value="Вычислить">
</form>

<?php
    if($_SERVER['REQUEST_METHOD'] == 'POST') {
        if (
            (!empty($_POST["op1"]) && !empty($_POST["op2"]) && $_POST["s1"] != "sqrt") ||
            (!empty($_POST["op1"]) &&  $_POST["s1"] == "sqrt" && $_POST["sqrt"] == "op1") ||
            (!empty($_POST["op2"]) &&  $_POST["s1"] == "sqrt" && $_POST["sqrt"] == "op2")
        ) {
            switch ($_POST["s1"]) {
                case "+": $r=$_POST["op1"] + $_POST["op2"]; break;
                case "-": $r=$_POST["op1"] - $_POST["op2"]; break;
                case "*": $r=$_POST["op1"] * $_POST["op2"]; break;
                case "/": $r=$_POST["op1"] / $_POST["op2"]; break;
                case "sqrt": {
                    
                    if ($_POST["sqrt"] == "op1") {
                        $r = sqrt($_POST["op1"]);
                    } else {
                        $r = sqrt($_POST["op2"]);
                    }

                    break;
                }
                default : $r="Операция не поддерживается";
            }
            
            if (!empty($_POST["round"])) $r = round($r, 3);
            
            echo "<p>Результат: $r</p>";
			
        } else {
            echo <<<EOT
                <p class="error">Не все операнды определены</p>
EOT;
        }
    }
?>

</body>
</html> 
