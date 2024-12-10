<?php
include 'base-start.php';
$json = file_get_contents('php://input');
$data = json_decode($json, true);
$newJson = $data['dish'];
try {
    $id_plat = uniqid();
    foreach ($newJson['ingredient'] as $ingredient) {
        $sql = 'SELECT * FROM ingredient WHERE LIBELLE_INGREDIENT = :name';
        $result = $base->prepare($sql);
        $result->execute(array('name' => $ingredient));
        $row = $result->fetch(PDO::FETCH_ASSOC);
        $id_ingredient = '';
        if (!$row) {
            $id_ingredient = uniqid();
            $sql = 'INSERT INTO ingredient (ID_INGREDIENT, LIBELLE_INGREDIENT) VALUES (:id, :name)';
            $result = $base->prepare($sql);
            $result->execute(array('id' => $id_ingredient, 'name' => $ingredient));
        } else {
            $id_ingredient = $row['ID_INGREDIENT'];
        }
        $sql = 'SELECT * FROM plat_ingredient WHERE ID_PLAT = :id_plat AND ID_INGREDIENT = :id_ingredient';
        $result = $base->prepare($sql);
        $result->execute(array('id_plat' => $id_plat, 'id_ingredient' => $id_ingredient));
        $row = $result->fetch(PDO::FETCH_ASSOC);
        if (!$row) {
            $sql = 'INSERT INTO plat_ingredient (ID_PLAT, ID_INGREDIENT) VALUES (:id_plat, :id_ingredient)';
            $result = $base->prepare($sql);
            $result->execute(array('id_plat' => $id_plat, 'id_ingredient' => $id_ingredient));
        }
    }

    $sql = 'SELECT * FROM origine WHERE LIBELLE_ORIGINE = :name';
    $result = $base->prepare($sql);
    $result->execute(array('name' => $newJson['origin']));
    $row = $result->fetch(PDO::FETCH_ASSOC);
    $id_origin = $row['ID_ORIGINE'];
    $sql = 'SELECT * FROM type WHERE LIBELLE_TYPE = :name';
    $result = $base->prepare($sql);
    $result->execute(array('name' => $newJson['type']));
    $row = $result->fetch(PDO::FETCH_ASSOC);
    $id_type = $row['ID_TYPE'];
    $sql = 'SELECT * FROM regime WHERE LIBELLE_REGIME = :name';
    $result = $base->prepare($sql);
    $result->execute(array('name' => $newJson['diet']));
    $row = $result->fetch(PDO::FETCH_ASSOC);
    $id_regime = $row['ID_REGIME'];
    $sql = 'SELECT * FROM plat WHERE LIBELLE_PLAT = :name';
    $result = $base->prepare($sql);
    $result->execute(array('name' => $newJson['name']));
    $row = $result->fetch(PDO::FETCH_ASSOC);
    if (!$row) {
        $sql = 'INSERT INTO plat (ID_PLAT, LIBELLE_PLAT, NIVEAU_DIFFICULTE, INSTRUCTION, ID_ORIGINE, ID_TYPE, ID_REGIME, ID_USER, HEALTH) VALUES (:id, :name, :level, :instruction, :origin, :type, :regime, :id_user, :health)';
        $result = $base->prepare($sql);
        $result->execute(array('id' => $id_plat, 'name' => $newJson['name'], 'level' => $newJson['level'], 'instruction' => $newJson['instruction'], 'origin' => $id_origin, 'type' => $id_type, 'regime' => $id_regime, 'id_user' => $_SESSION['id'], 'health' => $newJson['health']));
    }
} catch (PDOException $e) {
    echo 'Error: ' . $e->getMessage();
}


