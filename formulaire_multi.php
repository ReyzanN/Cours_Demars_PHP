<?php
require ('config.php');

if(isset($_GET['id'])){
    $titrePage = "Modification d'une classe";
    $requete_selection_classe = "SELECT * FROM classe WHERE id=".$_GET['id'];
    $result = $connexion->query($requete_selection_classe);
    $display_result = $result->fetch();

    $nomClasse = $display_result[1];
    $niveauClasse = $display_result[2];
    $sectionClasse = $display_result[3];
    $ordreClasse = $display_result[4];

    $actionFrom = "modification";
}
else{
    $titrePage = "Ajout d'une nouvelle classe";
    $actionFrom = "ajoutClasse";
}

?>
<html lang="fr">
    <head>
        <title>Gestion des classes</title>
        <meta charset="utf8">
        <link rel="stylesheet" href="style.css">
        <script defer src="fa/js/all.js"></script> <!--load all styles -->
        <link rel="icon" href="address-book-regular.svg">
    </head>
    <body>
        <section>
            <div class="container_formulaire">
                <h1><?php echo $titrePage ?></h1>

                <form method="post" action="index.php?<?php echo $actionFrom ?>">

                    <input type="hidden" name="idClasse" value="<?php if (isset($_GET['id'])){echo $_GET['id'];} ?>">
                    
                    <label for="nomClasse">Nom de la classe :</label>
                    <input type="text" name="nomClasse" value="<?php if (isset($nomClasse)){echo $nomClasse;}?>" autocomplete="off">
                    <label for="niveauClasse">Niveau de la classe :</label>
                    <input type="text" name="niveauClasse" value="<?php if (isset($niveauClasse)){echo $niveauClasse;}?>" autocomplete="off">
                    <label for="sectionClasse">Section de la classe :</label>
                    <input type="text" name="sectionClasse" value="<?php if (isset($sectionClasse)){echo $sectionClasse;}?>" autocomplete="off">
                    <label for="ordreClasse">Ordre de la classe :</label>
                    <input type="number" name="ordreClasse" value="<?php if (isset($ordreClasse)){echo $ordreClasse;}?>" autocomplete="off">
                    <button type="submit"><?php echo $titrePage ?></button>
                </form>
                <div class="retour_index">
                    <a href="index.php"><i class="fas fa-home fa-7x"></i></a>
                </div>
            </div>
        </section>
    </body>
</html>