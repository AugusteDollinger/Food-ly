<?php
include "base-start.php";
if (isset($_POST['user-name']) && isset($_POST['password']) && !empty($_POST['user-name']) && !empty($_POST['password'])) {
    $sql = 'SELECT * FROM user WHERE USER_NAME = :user_name';
    $result = $base->prepare($sql);
    $result->execute(array('user_name' => $_POST['user-name']));
    $row = $result->fetch(PDO::FETCH_ASSOC);
    if ($row) {
        if (password_verify($_POST['password'], $row['PASSWORD'])) {
            $_SESSION['id'] = $row['ID_USER'];
            header('Location: index.php');
        } else {
            echo 'Wrong credentials';
        }
    } else {
        echo 'Wrong credentials';
    }
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<a href="register.php">register</a>
<form action="login.php" method="post">
    <input type="text" name="user-name"><br><br>
    <input type="password" name="password"><br><br>
    <input type="submit" value="Login">
</form>
</body>
</html>