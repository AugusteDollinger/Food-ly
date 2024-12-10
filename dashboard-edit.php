<?php
include 'base-start.php';
include 'dashboard-includes/sql-requests/sql-delete.php';
include "dashboard-includes/sql-requests/sql-update.php";
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit</title>
    <link rel="stylesheet" href="">
</head>
<body>
<form action="dashboard-edit.php" method="post">
    <label for="ingredient">Edit the <?php echo $_GET['from']?> :</label>
    <input type="text" name="new-value" value="<?php echo $row['LIBELLE_'.strtoupper($_GET['from'])]; ?>">
    <input type="hidden" name="id" value="<?php echo $_GET['id']; ?>">
    <input type="submit" value="Edit" name="edit">
    <input type="submit" value="Delete" name="delete">
    <input type="hidden" name="from" value="<?php echo $_GET['from']; ?>">
    <input type="hidden" name="where" value="<?php echo $_GET['where']; ?>">
</form>
</body>
</html>
