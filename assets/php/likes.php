<?php
    session_start();

    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);

    // RECUPERATION DES INFORMATIONS
    $articleId = $_POST['articleId'];

    $req = $bdd->prepare('INSERT INTO t_likes(ID_USER,ID_ARTICLE) VALUES(:id_user, :id_article)');
    $req->execute(array(

        'id_user' => $_SESSION['userId'],
        'id_article' => $articleId,

    ));