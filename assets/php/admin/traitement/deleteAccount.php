<?php

    sleep (2);

    session_start();

    if(true) {
        if (true) {

            $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);

            $statement = '
                        UPDATE t_users
                        SET actif = 0
                        WHERE idT_USERS = '. $_SESSION['userId'] .'
                  ';

            $req = $bdd->query($statement);

            //header('Location: ../../../../index.php');


        }
    }