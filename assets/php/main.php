<!DOCTYPE html>
<html lang="en">

<head>

    <title>design site html css </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/article.css">

    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">

    <link rel="stylesheet" href="https://anijs.github.io/lib/anicollection/anicollection.css" />

    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">




</head>
<?php

    if(session_id() == "") session_start();

    $_COOKIE['message'] += 1;
    setcookie('message', $_COOKIE['message']);



?>




<body>

    <main class="container">

        <div class="row">
            <header>
                <?php include_once '../html/header.php'; ?>
            </header>
        </div>
    </main>

    <div class="projecteur">

<h2>Welcolme to THE Blog</h2>
    </div>

        <main class="container">
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
                                        <a href="./reset_pass.php">Mot de passe oublié ? </a>
            
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
                                        <label><input type="checkbox" name="categorie[]" value="cuisine">Cuisine</label>
                                        <label><input type="checkbox" name="categorie[]" value="sport">Sport</label>
                                        <label><input type="checkbox" name="categorie[]" value="musique">Musique</label>
                                        <label><input type="checkbox" name="categorie[]" value="cinema">Cinéma</label> 
                                        <label><input type="checkbox" name="categorie[]" value="animaux">Animaux</label>
                                                                                 
                                   
                                        <textarea class="col-xs-12" name=\'contenu\' id="contenu"> </textarea>
                                      
            
                                        <input class="col-xs-12" id="submit" type="submit" value="Publier !">
            
                                    </form>
                                </div> 
                            </div>
                        </div>
                </div>
                
                <div class="wrapper-two" style="display:none">
             
                       <div class="pop-up-two">
                           <div class="pop-up-text">
                               <div class="container-fluid">
                                   <form class="form-comment" method="POST" action="./comment.php">

                                       <textarea class="col-xs-12" name=\'commentaire\' id="commentaire"> </textarea>
                                       
                                       <input class="col-xs-12" id="submit-comment" type="submit" value="COMMENTER">
            
                                    </form>
                                </div>
                            </div>
                       </div>
                </div>
                    ');

            }
        ?>

        <div class="zone-articles">
            <?php
                include_once ('./page.php');
            ?>
        </div>

        <div class="return"></div>


    </main>
</body>

<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
    crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript permet d'utiliser les fonctionalité avancer de bootstrap -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
    crossorigin="anonymous"></script>
<div id="fb-root"></div>
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.11';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>


<?php
    include_once './script.php';
?>


</html>