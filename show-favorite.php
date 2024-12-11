<?php
include "base-start.php";
if (isset($_GET['id'])) {
    $sql = 'DELETE FROM plat WHERE ID_PLAT = :id';
    $result = $base->prepare($sql);
    $result->execute(array('id' => $_GET['id']));
    $sql = 'DELETE FROM plat_ingredient WHERE ID_PLAT = :id';
    $result = $base->prepare($sql);
    $result->execute(array('id' => $_GET['id']));
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Your Favorites</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<main>
    <a href="index.php">Home</a>
    <h1>Your Favorites</h1>
    <?php
    $sql = 'SELECT *, plat.LIBELLE_PLAT AS PLAT_LIBELLE FROM plat 
            JOIN origine ON plat.ID_ORIGINE = origine.ID_ORIGINE 
            JOIN type ON plat.ID_TYPE = type.ID_TYPE 
            JOIN regime ON plat.ID_REGIME = regime.ID_REGIME WHERE ID_USER = :id';
    $result = $base->prepare($sql);
    $result->execute(array('id' => $_SESSION['id']));
    while ($row = $result->fetch()) {
        echo '<div style="border: 1px solid black; margin: 10px; padding: 10px;">';
        echo '<h2>Name: ' . $row['PLAT_LIBELLE'] . '</h2>';
        echo '<p>Origin: ' . $row['LIBELLE_ORIGINE'] . '</p>';
        echo '<p>Type: ' . $row['LIBELLE_TYPE'] . '</p>';
        echo '<p>Regime: ' . $row['LIBELLE_REGIME'] . '</p>';
        echo '<p>Level: ' . $row['NIVEAU_DIFFICULTE'] . '</p>';
        echo '<p>Health: ' . $row['HEALTH'] . '</p>';
        echo '<p>Ingredients:</p>';
        echo '<ul>';
        $sql = 'SELECT * FROM plat_ingredient JOIN ingredient ON plat_ingredient.ID_INGREDIENT = ingredient.ID_INGREDIENT WHERE ID_PLAT = :id ';
        $result2 = $base->prepare($sql);
        $result2->execute(array('id' => $row['ID_PLAT']));
        while ($row2 = $result2->fetch()) {
            echo '<li>' . $row2['LIBELLE_INGREDIENT'] . '</li>';
        }
        echo '</ul>';
        echo '<p>Instructions: '.$row['INSTRUCTION'].'</p>';
        echo '<a href="show-favorite.php?id='.$row['ID_PLAT'].'">Delete</a>';
        echo '</div>';
    }
    ?>
</main>
</body>
</html>