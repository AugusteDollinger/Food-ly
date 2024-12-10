<?php
if(isset($_POST['add-ingredient'])) {
    $sql = 'SELECT * FROM ingredient WHERE LIBELLE_INGREDIENT = :name';
    $result = $base->prepare($sql);
    $result->execute(array('name' => $_POST['ingredient']));
    $row = $result->fetch(PDO::FETCH_ASSOC);
    if(!$row) {
        $sql = 'INSERT INTO ingredient (ID_INGREDIENT, LIBELLE_INGREDIENT) VALUES (:id, :name)';
        $result = $base->prepare($sql);
        $result->execute(array('id'=>uniqid(), 'name'=>$_POST['ingredient']));
    }
    else {
        echo 'Error : ingredient already exists';
    }
}
if(isset($_POST['add-origine'])) {
    $sql = 'SELECT * FROM origine WHERE LIBELLE_ORIGINE = :name';
    $result = $base->prepare($sql);
    $result->execute(array('name' => $_POST['origine']));
    $row = $result->fetch(PDO::FETCH_ASSOC);
    if(!$row) {
        $sql = 'INSERT INTO origine (ID_ORIGINE, LIBELLE_ORIGINE) VALUES (:id, :name)';
        $result = $base->prepare($sql);
        $result->execute(array('id'=>uniqid(), 'name'=>$_POST['origine']));
    }
    else {
        echo 'Error : origine already exists';
    }
}
if(isset($_POST['add-type'])) {
    $sql = 'SELECT * FROM type WHERE LIBELLE_TYPE = :name';
    $result = $base->prepare($sql);
    $result->execute(array('name' => $_POST['type']));
    $row = $result->fetch(PDO::FETCH_ASSOC);
    if(!$row) {
        $sql = 'INSERT INTO type (ID_TYPE, LIBELLE_TYPE) VALUES (:id, :name)';
        $result = $base->prepare($sql);
        $result->execute(array('id'=>uniqid(), 'name'=>$_POST['type']));
    }
    else {
        echo 'Error : type already exists';
    }
}
if(isset($_POST['add-regime'])) {
    $sql = 'SELECT * FROM regime WHERE LIBELLE_REGIME = :name';
    $result = $base->prepare($sql);
    $result->execute(array('name' => $_POST['regime']));
    $row = $result->fetch(PDO::FETCH_ASSOC);
    if(!$row) {
        $sql = 'INSERT INTO regime (ID_REGIME, LIBELLE_REGIME) VALUES (:id, :name)';
        $result = $base->prepare($sql);
        $result->execute(array('id'=>uniqid(), 'name'=>$_POST['regime']));
    }
    else {
        echo 'Error : regime already exists';
    }
}
?>