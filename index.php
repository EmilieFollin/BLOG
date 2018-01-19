<?php


    session_start();



        if(!isset($_COOKIE["message"])){
            setcookie("message", 1);

    }

    $_SESSION['host'] = 'mysql:host=localhost;dbname=blog2;charset=utf8';
    $_SESSION['ndcSQL'] = 'root';
    $_SESSION['mdpSQL'] = '';

    $_SESSION['pseudo'] = '';
    $_SESSION['success']= false;
    $_SESSION['login'] = false;
    $_SESSION['userId'] = '';

    header('Location: ./assets/php/main.php');
    
?>

