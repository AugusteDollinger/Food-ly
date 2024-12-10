<?php
if (isset($_POST['edit'])) {
    $sql = 'UPDATE '.$_POST['from'].' SET LIBELLE_'.strtoupper($_POST['from']).' = :value WHERE '.$_POST['where'].' = :id';
    $result = $base->prepare($sql);
    $result->execute(array( 'value'=>$_POST['new-value'], 'id'=>$_POST['id']));
    header('Location: dashboard.php');
}
if (isset($_GET['action']) && $_GET['action'] === 'modify') {
    $sql = 'SELECT * FROM '.$_GET['from'].' WHERE '.$_GET['where'].' = :id';
    $result = $base->prepare($sql);
    $result->execute(array('id' => $_GET['id']));
    $row = $result->fetch(PDO::FETCH_ASSOC);
}