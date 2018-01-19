<?php

session_start();
$bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);

if(isset($_POST['titre']) && isset($_POST['contenu'])) {

    if(!testExist('titre')) {


                // GESTION DE T_ARTICLES

        // Insertion de l'article dans t_articles
        $req = $bdd->prepare('INSERT INTO t_articles(titre, contenu, affichage, statut, ID_USER) VALUES(:titre, :contenu, :affichage, :statut, :ID_USER)');
        $req->execute(array(
            'titre' => $_POST['titre'],
            'contenu' => $_POST['contenu'],
            'affichage' => 1,
            'statut' => 'redige',
            'ID_USER' => '', //

        ));

        // On récupère l'id de l'article envoyé
        $articleId = $bdd->lastInsertId();







                // GESTION DE T_CATEGORIES

        // On récupère la catégorie sélectionnée
        $categorie = $_POST['categorie'];

        // On va chercher l'id de la catégorie dans t_categories
            // On ouvre une requète dans la bdd
            $req = $bdd->query('SELECT * FROM t_categories');

            // On effectue une boucle pour parcourir notre table (t_categories)
            while ($donnees = $req->fetch()) {
                // On test lorsque la catégorie envoyée est égale à une de nos catégories
                if($categorie == $donnees['categorie']) {
                    // On récupère son ID
                    $categorieId = $donnees['idT_CATEGORIES'];
                }
            }




                // GESTION DE T_CATEGORIES_HAS_T_ARTICLES

        // Insertion de $articleId et $categorieId dans T_CATEGORIES_HAS_T_ARTICLES
        $req = $bdd->prepare('INSERT INTO t_categories_has_t_articles (T_CATEGORIES_idT_CATEGORIES, T_ARTICLES_idT_ARTICLES) VALUES(:val1, :val2)');
        $req->execute(array(
            'val1' => $categorieId,
            'val2' => $articleId,
        ));




        // On affiche le succès de l'insertion de l'article
        $_SESSION['success'] = true;

    }

}




    header('Location: ./main.php');




// FONCTION TESTEXIST()
function testExist($var) {
    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);
    $data = $bdd->query('SELECT * FROM t_articles');

    $test = false;

    while ($user = $data->fetch()) {
        if($user[$var] == $_POST[$var]) {
            $test = true;
        }
    }

    return $test;
}

?>
