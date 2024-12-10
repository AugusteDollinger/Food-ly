<?php
if (isset($_POST['delete'])) {
    $sql = 'DELETE FROM '.$_POST['from'].' WHERE '.$_POST['where'].' = :id';
    $result = $base->prepare($sql);
    $result->execute(array('id'=>$_POST['id']));
    header('Location: dashboard.php');
}