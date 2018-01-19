<?php

    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);
    $data = $bdd->query('SELECT * FROM t_articles ORDER BY idT_ARTICLES DESC');


    //trouver l'auteur
    function findAuthor($idarticle , $db){
        $req = $db -> prepare('SELECT * FROM `t_users`left join t_articles_has_t_users on idT_USERS = t_users_id_user WHERE t_articles_id_article = ?');
        $req -> execute([$idarticle]);
        $row = $req -> fetch();
        return $row['pseudo'];
    }


    while ($article = $data->fetch() ){
        echo '<div class="article">';
        echo '    <div class="Titre"> ' . $article['titre'] . '</div>';
        echo '    <div class="autre">';
        echo          'statut : ' . $article['statut'] . ' auteur : ' . findAuthor($article['idT_ARTICLES'],$bdd) . '<br>' .  '  date : ' . $article['date'];
        echo '    </div>';
        echo '<br>';
        echo '    <div class="Contenu"> ';
        echo            $article['contenu'];
        echo '    </div>';
        echo '<br>';
        echo '</div>';



    }

