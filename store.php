<?php
include 'base-start.php';
$json = file_get_contents('php://input');
$data = json_decode($json, true);
$newJson = json_decode($data['data'], true);

foreach ($newJson as $item) {
    try {
        $id_plat = uniqid();
        foreach ($item['ingredient'] as $ingredient) {
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
            }
            else {
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
        $result->execute(array('name' => $item['origin']));
        $row = $result->fetch(PDO::FETCH_ASSOC);
        $id_origin = '';
        if(!$row) {
            $id_origin = uniqid();
            $sql = 'INSERT INTO origine (ID_ORIGINE, LIBELLE_ORIGINE) VALUES (:id, :name)';
            $result = $base->prepare($sql);
            $result->execute(array('id'=>$id_origin, 'name'=>$item['origin']));
        }
        else {
            $id_origin = $row['ID_ORIGINE'];
        }
        $sql = 'SELECT * FROM type WHERE LIBELLE_TYPE = :name';
        $result = $base->prepare($sql);
        $result->execute(array('name' => $item['type']));
        $row = $result->fetch(PDO::FETCH_ASSOC);
        $id_type = '';
        if(!$row) {
            $id_type = uniqid();
            $sql = 'INSERT INTO type (ID_TYPE, LIBELLE_TYPE) VALUES (:id, :name)';
            $result = $base->prepare($sql);
            $result->execute(array('id'=>$id_type, 'name'=>$item['type']));
        }
        else {
            $id_type = $row['ID_TYPE'];
        }
        $sql = 'SELECT * FROM regime WHERE LIBELLE_REGIME = :name';
        $result = $base->prepare($sql);
        $result->execute(array('name' => $item['diet']));
        $row = $result->fetch(PDO::FETCH_ASSOC);
        $id_regime = '';
        if(!$row) {
            $id_regime = uniqid();
            $sql = 'INSERT INTO regime (ID_REGIME, LIBELLE_REGIME) VALUES (:id, :name)';
            $result = $base->prepare($sql);
            $result->execute(array('id'=>$id_regime, 'name'=>$item['diet']));
        }
        else {
            $id_regime = $row['ID_REGIME'];
        }
    }
    catch (Exception $e) {
        echo 'Error : ' . $e->getMessage();
    }
}