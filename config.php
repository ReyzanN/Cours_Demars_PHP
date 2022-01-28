<?php

$users = "root";
$pass = "";

try {
$connexion = new PDO('mysql:host=localhost;dbname=eleve', $users, $pass);
}catch(PDOException $e){
echo "Erreur laison BDD" . $e->getMessage();
die();
}
?>