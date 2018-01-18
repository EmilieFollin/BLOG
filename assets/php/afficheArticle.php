<?php

$bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);
$data = $bdd->query('SELECT * FROM t_articles ORDER BY IDT_ARTICLES DESC');

    while ($article = $data->fetch() ){
        echo '<div class="article">';
        echo '    <div class="Titre"> ' . $article['titre'] . '</div>';
        echo '    <div class="autre">';
        echo          'statut : ' . $article['statut'] . ' auteur : ' . $_SESSION['pseudo'];
        echo '    </div>';
        echo '<br>';
        echo '    <div class="Contenu"> ';
        echo            $article['contenu'];
        echo '    </div>';
        echo '<br>';
        echo '</div>';

    }