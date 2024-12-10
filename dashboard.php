<?php
include 'base-start.php';

include 'dashboard-includes/sql-requests/sql-add.php';
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dashboard</title>
    <style>
        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<a href="index.php">Menu</a>

<?php
include 'dashboard-includes/ingredients.php';
include 'dashboard-includes/origines.php';
include 'dashboard-includes/type.php';
include 'dashboard-includes/regime.php';
?>

</body>
</html>