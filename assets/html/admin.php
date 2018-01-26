<head>

    <title>design site html css </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">

    <link rel="stylesheet" href="../css/admin.css">





</head>

<body>

<div class="admin-panel clearfix">
    <div class="slidebar">
        <div class="logo">
            <a href=""></a>
        </div>
        <ul>
            <li><a href="#dashboard" id="targeted">dashboard</a></li>
            <li><a href="#posts">posts</a></li>
            <li><a href="#media">media</a></li>
            <li><a href="#pages">pages</a></li>
            <li><a href="#links">links</a></li>
            <li><a href="#comments">comments</a></li>
            <li><a href="#widgets">widgets</a></li>
            <li><a href="#plugins">plugins</a></li>
            <li><a href="#users">users</a></li>
            <li><a href="#tools">tools</a></li>
            <li><a href="#settings">settings</a></li>
            <li><a href="../php/main.php">Mon Blog</a></li>
        </ul>
    </div>
    <div class="main">
        <ul class="topbar clearfix">
            <li><a href="#">q</a></li>
            <li><a href="#">p</a></li>
            <li><a href="#">o</a></li>
            <li><a href="#">f</a></li>
            <li><a href="#">n</a></li>
        </ul>
        <div class="mainContent clearfix">
            <div id="dashboard">
                <h2 class="header"><span class="icon"></span>Dashboard</h2>
                <div class="monitor">
                    <h4>Right Now</h4>
                    <div class="clearfix">
                        <ul class="content">
                            <li>content</li>
                            <li class="posts"><span class="count">179</span><a href="">posts</a></li>
                            <li class="pages"><span class="count">13</span><a href="">pages</a></li>
                            <li class="categories"><span class="count">21</span><a href="">categories</a></li>
                            <li class="tags"><span class="count">305</span><a href="">tags</a></li>
                        </ul>
                        <ul class="discussions">
                            <li>discussions</li>
                            <li class="comments"><span class="count">353</span><a href="">comments</a></li>
                            <li class="approved"><span class="count">319</span><a href="">approved</a></li>
                            <li class="pending"><span class="count">0</span><a href="">pending</a></li>
                            <li class="spam"><span class="count">34</span><a href="">spam</a></li>
                        </ul>
                    </div>
                    <p>Theme <a href="">Twenty Eleven</a> with <a href="">3 widgets</a></p>
                </div>
                <div class="quick-press">
                    <h4>Quick Press</h4>
                    <form action="" method="post">
                        <input type="text" name="title" placeholder="Title"/>
                        <input type="text" name="content" placeholder="Content"/>
                        <input type="text" name="tags" placeholder="Tags"/>
                        <button type="button" class="save">l</button>
                        <button type="button" class="delet">m</button>
                        <button type="submit" class="submit" name="submit">Publish</button>
                    </form>
                </div>
            </div>
            <div id="posts">
                <h2 class="header">posts</h2>

            </div>
            <div id="media">
                <h2 class="header">media</h2>
            </div>
            <div id="pages">
                <h2 class="header">pages</h2>
            </div>
            <div id="links">
                <h2 class="header">links</h2>
            </div>
            <div id="comments">
                <h2 class="header">comments</h2>
            </div>
            <div id="widgets">
                <h2 class="header">widgets</h2>
            </div>
             <div id="users">
                <h2 class="header">users</h2>
                 <section>

                     <?php




                     // Partie "Requête"
                          $cnx = new PDO('mysql:host=localhost;dbname=blog2;charset=utf8', 'root', '');

		                    if(isset($_SESSION['pseudo']) AND isset($_POST['pass']) AND isset($_POST['NewMail']) AND isset($_POST['NewMailVerif']))
		{
		                	$pass_hache=sha1($_POST['pass']);

			                $req=$bdd->prepare('SELECT id FROM t_users WHERE pseudo = ? AND mdp= ?');
                     $req->execute(array($_SESSION['pseudo'],$pass_hache));
                     $resultat=$req->fetch();

                     if(!$resultat)
                     {
                     echo 'mauvais mot de passe';
                     }
                     elseif (empty($_POST['NewPass']))
                     {
                     echo 'Le nouveau mot de passe n\'a pas été renseigné.';
                     }
                     elseif ($_POST['NewPass'] != $_POST['NewPassVerif'])
                     {
                     echo 'Les mots de passe ne coresspondent pas.';
                     }
                     else
                     {
                     $new_pass_hache=sha1($_POST['NewPass']);
                     $req=$bdd->prepare('UPDATE t_users SET mdp=? WHERE id=?');
                     $req->execute(array($new_pass_hache,$_SESSION['id']));
                     $req->closeCursor();
                     echo 'Le mot de passe a été changé.';
                     }
                     }
                     ?>
                     <article>
                         <h4>Changez votre mot de passe</h4>
                         <form method='post'>
                             <ul>
                                 <li>
                                     <label for='pass'>Votre ancien mot de passe</label><br/>
                                     <input type='password' name='pass' id='mdp'/>
                                 </li><br/>
                                 <li>
                                     <label for='NewPass'>Votre nouveau mot de passe</label><br/>
                                     <input type='password' name='NewPass' id='mdp'/>
                                 </li><br/>
                                 <li>
                                     <label for='NewPassVerif'>Confirmez votre nouveau mot de passe</label><br/>
                                     <input type='password' name='NewPassVerif' />
                                 </li><br/>
                                 <li><input type='submit' name='valider'/></li>
                             </ul>
                         </form>
                     </article>
                 </section>
            </div>
            <div id="tools">
                <h2 class="header">tools</h2>
            </div>
            <div id="settings">
                <h2 class="header">settings</h2>
            </div>

        </div>
        <ul class="statusbar">
            <li><a href=""></a></li>
            <li><a href=""></a></li>
            <li class="profiles-setting"><a href="">s</a></li>
            <li class="logout"><a href="">k</a></li>
        </ul>
    </div>
</div>
</body>

<script src="../js/admin.js"></script>