<?php
include "base-start.php";
if (isset($_POST['user-name']) && isset($_POST['password']) && !empty($_POST['user-name']) && !empty($_POST['password'])) {
    $sql = 'SELECT * FROM user WHERE USER_NAME = :name';
    $result = $base->prepare($sql);
    $result->execute(array('name' => $_POST['user-name']));
    $row = $result->fetch(PDO::FETCH_ASSOC);
    if (!$row) {
        $id = uniqid();
        $sql = 'INSERT INTO user (ID_USER, USER_NAME, PASSWORD) VALUES (:id, :name, :password)';
        $result = $base->prepare($sql);
        $result->execute(array('id'=> $id, 'name' => $_POST['user-name'], 'password' => password_hash($_POST['password'], PASSWORD_DEFAULT)));
        $_SESSION['id'] = $id;
        header('Location: index.php');
    }
}
if (isset($_SESSION['id'])) {
    echo $_SESSION['id'];
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register</title>
</head>
<body>
<a href="login.php">login</a>
<form action="register.php" method="post">
    <input type="text" name="user-name"><br> <br>
    <input type="password" name="password"><br> <br>
    <input type="submit" value="Register">
</form>
</body>
</html>
