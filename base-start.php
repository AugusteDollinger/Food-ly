<?php
session_start();
$base = new PDO('mysql:host=127.0.0.1;dbname=food-ly', 'root', '');
$base->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>