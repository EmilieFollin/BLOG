<?php

    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);

    $statement = 'SELECT * FROM t_articles WHERE ID_USER = '.$_SESSION['userId'].' ORDER BY idT_ARTICLES DESC';

    $data = $bdd->query($statement);



    afficherArticleMiniature($data, false);


?>


    <div class="zone-button">

        <button class="prev-button"><<- PREV</button>
        <button class="next-button">NEXT ->></button>

    </div>



<?php

  // FUNCTIONS


// Classer Catégories

function classerCategories($articleId) {
    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);

    $reqStatement = '
                        SELECT *
                        FROM t_categories
                        INNER JOIN t_categories_has_t_articles ON t_categories.idT_CATEGORIES  = t_categories_has_t_articles.T_CATEGORIES_idT_CATEGORIES
                        WHERE t_categories_has_t_articles.T_ARTICLES_idT_ARTICLES	 = ' . $articleId . '
                    ';

    $requete = $bdd->query($reqStatement);


    // On affiche la catégorie

    while($categorie = $requete->fetch()) {
        echo ' ' . $categorie['categorie'] . ' ';
    }

}




// Afficher Article Miniature

function afficherArticleMiniature($data, $auteur = false) {
    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);
    $i = 0;

    while ($article = $data->fetch()){

        $i++;

        // AFFICHAGE DU MESSAGE
        echo '<div class="article-miniature ';
            classerCategories($article['idT_ARTICLES']);
            addClassCacher($i);
        echo '">';
        echo '    <div class="Titre">' . $article['titre'] . '</div>';

        if($auteur) {
            echo ' <div class="autre"> auteur : ' . findAuthor($article['idT_ARTICLES'],$bdd) . '</div>';
        } else {
            echo ' <div class="autre">' . statut($article['statut']) . '</div>';
        }

        echo '</div>';
    }
}





// STATUT

function statut($statut) {

    // STATUT REDIGE
    if ($statut == 'redige') {
        return '<div style="color: green;">'. $statut .'</div>';
    }


    // STATUT BROUILLON
    if ($statut == 'brouillon') {
        return '<div style="color: darkorange;">'. $statut .'</div>';
    }

    // STATUT CACHE
    if ($statut == 'cache') {
        return '<div style="color: red;">'. $statut .'</div>';
    }
}



// ADD CLASS CACHER

function addClassCacher($i) {
    if($i > 6) {
        echo ' cacher-article';
    } else {
        echo ' montrer-article';
    }
}

?>