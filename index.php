<?php
require ('config.php');

// Ordre SQL de base
$sql_base = "SELECT * FROM classe";

// Affichage des classes
$req = $connexion->query($sql_base);
$res = $req->fetchAll();

// Spression par rapport à l'id

if(isset($_GET['id'])){
    $requeteSQL_pour_supression = "DELETE FROM classe WHERE id =".$_GET['id'];
    $connexion->query($requeteSQL_pour_supression);
    header('Location: index.php');
}

// Création nouvelle classe

if(isset($_GET['ajoutClasse'])){
    $nomClasse = $_POST['nomClasse'];
    $niveauClasse = $_POST['niveauClasse'];
    $sectionClasse = $_POST['sectionClasse'];
    $ordreClasse = $_POST['ordreClasse'];

    $requeteSQL_pour_creationClasse = "INSERT INTO classe (nomclasse, idniveau, section, ordre) VALUE ('$nomClasse', $niveauClasse, '$sectionClasse', '$ordreClasse')";
    $connexion->query($requeteSQL_pour_creationClasse);

    header('Location: index.php');
}

if(isset($_GET['modification'])){

    $idclasse = $_POST['idClasse'];
    $nomClasse = $_POST['nomClasse'];
    $niveauClasse = $_POST['niveauClasse'];
    $sectionClasse = $_POST['sectionClasse'];
    $ordreClasse = $_POST['ordreClasse'];

    $requeteSQL_pour_ModificationClasse = "UPDATE classe SET nomclasse = '$nomClasse', idniveau = $niveauClasse, section = '$sectionClasse', ordre = '$ordreClasse' WHERE id = $idclasse";
    $connexion->query($requeteSQL_pour_ModificationClasse);
    header('Location: index.php');
}

?>

<html lang="fr">
    <head>
        <title>Gestion des classes</title>
        <meta charset="utf8">
        <link rel="stylesheet" href="style.css">
        <script defer src="fa/js/all.js"></script> <!--load all styles -->
        <script defer src="script_confirmation.js"></script>
        <link rel="icon" href="address-book-regular.svg">
    </head>
    <body>
        <section>
            <div class="container">
                <h1><i class="far fa-address-book"></i>&nbsp; - Interface de gestion des classes</h1>
                <table>
                    <tr>
                        <th>Numéro de la classe</th>
                        <th>Nom de la classe</th>
                        <th>Niveau de la classe</th>
                        <th>Section de la classe</th>
                        <th>Ordre de la classe</th>
                        <th>Gestion de la classe</th>
                    </tr>
                    <?php
                    foreach ($res as $result){
                        echo '<tr>';
                        echo '<td>'.$result[0].'</td>';
                        echo '<td>'.$result[1].'</td>';
                        echo '<td>'.$result[2].'</td>';
                        echo '<td>'.$result[3].'</td>';
                        echo '<td>'.$result[4].'</td>';
                        echo '<td><a href="formulaire_multi.php?id='.$result[0].'"><i class="far fa-edit fa-2x"></i></a>&nbsp;&nbsp;<a href="" onclick="ConfimerSupression('.$result[0].')"><i class="far fa-trash-alt fa-2x"></i></a></td>';
                    }
                    ?>
                </table>

                <div class="ajout_classe">
                    <h2>Ajouter une nouvelle classe</h2>
                    <a href="formulaire_multi.php"><i class="fas fa-plus-circle fa-4x"></i></a>
                </div>
            </div>
        </section>
    </body>
</html>
