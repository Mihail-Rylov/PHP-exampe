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
    <form action="lab4_3.php" method="post">
        <label>Логин <input type="text" name="login"></label>
        <label>Пароль <input type="password" name="password"></label>
        <input type="submit" value="Создать">
    </form>
    
    <?php
        if($_SERVER['REQUEST_METHOD'] == 'POST') {
            $login = $_POST['login']; 
            $password = $_POST['password']; 
            echo "<p>".$login.":".crypt($password, base64_encode($password))."</p>";
        }
    ?>
</body>
</html>
