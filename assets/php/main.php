<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <title>Hedi MOKRANI Web développeur Nfactory design site html css </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/article.css">

    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">

    <link rel="stylesheet" href="https://anijs.github.io/lib/anicollection/anicollection.css" />

    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">




</head>


<body>

    <main class="container">

        <div class="row">



            <header>

                <nav class="navbar">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a href="#">
                                <img style="width: 100px;" src="http://www.free-icons-download.net/images/factory-logo-icon-84733.png" alt="logo factory blog">
                            </a>
                        </div>
                        <ul class="nav navbar-nav">

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <input type="search" placeholder="Search">
                            </li>

                            <?php

                            if(!$_SESSION['login']) {
                                echo ('
                                    
                                    <li style="margin:0px 10px;">
                                        <div class="button">
                                            <button class="button btn-5 pop-up-button-sign-in" style="margin: 20px auto; width:100%">Sign Up</button>
                                        </div>
                                    </li>
                                    
                                    <li  style="margin:0px 10px;">
                                        <button class="btn-5" style="margin: 20px auto; width:100%">Articles</button>
                                    </li>
                                    
                                    
                                    <li  style="margin:0px 10px;">
                                        <button class="btn-5 pop-up-button" style="margin: 20px auto; width:100%">login</button>
                                    </li>'
                                );
                            } else {
                                echo ('
                                    <li  style="margin:0px 10px;">
                                        <button class="btn-5 pop-up-button" style="margin: 20px auto; width:100%">New Article</button>
                                    </li>
                                    
                                    <li  style="margin:0px 10px;">
                                        <button class="btn-5" style="margin: 20px auto; width:100%">Articles</button>
                                    </li>
                                    

                                    <li  style="margin:0px 10px;">
                                        <a href="../../index.php" class="btn-5" style="margin: 20px auto; width:100%"><i class="fa fa-power-off" aria-hidden="true"></i></a>
                                    </li>
                                    ');
                            }

                            ?>
                        </ul>
                    </div>
                </nav>

                


                <div class="tag col-xs-12">
                    <ul>
                    <a href="">
                        <li class="col-sm-2 col-xs-12 ">TRENDING</li>
                    </a>
                    <a href="">
                        <li class="col-sm-2 col-xs-12 ">FOOD</li>
                    </a>
                    <a href="">
                        <li class="col-sm-2 col-xs-12 ">MONEY</li>
                    </a>
                    <a href="">
                        <li class="col-sm-2 col-xs-12">FUN</li>
                    </a>
                    <a href="">
                        <li class="col-sm-2 col-xs-12">TECHNOLOGY</li>
                    </a>
                    <a href="">
                        <li class="col-sm-2 col-xs-12">TRAVEL</li>
                    </a>
                    </ul>
                </div>




            </header>

        </div>

        <?php
            if(!$_SESSION['login']) {
                echo ('
                    <div class="wrapper">

                        <div class="pop-up">
                            <div class="pop-up-text">
                                <div class="container-fluid">
                                    <form id="form" method="POST" action="./login.php">
            
                                        
                                        <input class="col-xs-12" name=\'email\' id="email" type="text" placeholder="Pseudo ou E-MAIL">
                                        <input class="col-xs-12" name=\'MDP\' id="PASSWORD" type="text" placeholder="PASSWORD">
            
                                        <input class="col-xs-12" id="submit" type="submit" value="GO!">
            
                                    </form>
                                </div> 
                            </div>
                        </div>
                    </div>
                    <div class="wrapper-two" style="display:none">
             
                       <div class="pop-up-two">
                           <div class="pop-up-text">
                               <div class="container-fluid">
                                   <form id="form" method="POST" action="./signup.php">
            
                                       <input class="col-xs-12" name=pseudo id="pseudo" type="text" placeholder="PSEUDO">
                                       <input class="col-xs-12" name=email id="email" type="text" placeholder="E-MAIL">
                                       <input class="col-xs-12" name=MDP id="PASSWORD" type="text" placeholder="PASSWORD">
                                       <input class="col-xs-12" name=MDP id="PASSWORD" type="text" placeholder="REPEAT PASSWORD">
                                       <input class="col-xs-12" id="submit" type="submit" value="REGISTER">
            
                                    </form>
                                </div>
                            </div>
                       </div>
                    </div>
                ');
            } else {
                echo ('
                <div class="wrapper">

                        <div class="pop-up">
                            <div class="pop-up-text">
                                <div class="container-fluid">
                                    <form id="form" method="POST" action="./article.php">
            
                                        
                                        <input class="col-xs-12" name=\'titre\' id="titre" type="text" placeholder="titre">
                                        <select name="categorie">
                                            <option value="">Catégorie</option>
                                            <option value="cuisine">Cuisine</option>
                                            <option value="musique">Musique</option>
                                            <option value="porn">Porn</option>
                                            <option value="cinema">Cinema</option>
                                            <option value="sport">Sport</option>
                                        </select>
                                        <textarea class="col-xs-12" name=\'contenu\' id="contenu"> </textarea>
                                      
            
                                        <input class="col-xs-12" id="submit" type="submit" value="Publier !">
            
                                    </form>
                                </div> 
                            </div>
                        </div>
                </div>
                    ');

            }

            include_once ('./afficheArticle.php');
        ?>




        <?php
            if($_SESSION['success']) {
                echo ('<div class="alert alert-success"> Bienvenu sur notre site '.$_SESSION['pseudo'].' </div>');
                $_SESSION['success'] = false;
            }
        ?>

    </main>
</body>

<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
    crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript permet d'utiliser les fonctionalité avancer de bootstrap -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
    crossorigin="anonymous"></script>




<!-- INTEGRATION DE POPUP.JS -->
<script src="../js/popUp.js"></script>


</html>