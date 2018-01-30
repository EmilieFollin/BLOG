

<?php
session_start();

//On déclare la fonction Php :
function update_fluxRSS() {

    /*  Nous allons générer notre fichier XML d'un seul coup. Pour cela, nous allons stocker tout notre
      fichier dans une variable php : $xml.
      On commence par déclarer le fichier XML puis la version du flux RSS 2.0.
      Puis, on ajoute les éléments d'information sur le channel. Notez que nous avons volontairement
      omit quelques balises :
    */

    $xml = '<?xml version="1.0" encoding="UTF-8"?>';
    $xml .= '<rss version="2.0">';
    $xml .= '<channel>';
    $xml .= ' <title>Voici mon premier flux RSS !</title>';
    $xml .= ' <link>http://localhost/html-css-js/Projet%20Groupe/Blog%20emilie/BLOG/assets/php/main.php</link>';
    $xml .= ' <description>Voici le flux RSS de mon Blog ! Suivez le pour avoir les dernières news !</description>';


    $xml .= ' <language>fr</language>';
    $xml .= ' <copyright>Nfactory school</copyright>';
    $xml .= ' <managingEditor>rss@monblog.com</managingEditor>';
    $xml .= ' <category>Blog</category>';
    $xml .= ' <generator>PHP/MySQL</generator>';
    $xml .= ' <docs>http://www.rssboard.org</docs>';



    /*  Maintenant, nous allons nous connecter à notre base de données afin d'aller chercher les
      items à insérer dans le flux RSS.
    */

//on lit les 25 premiers éléments à partir du dernier ajouté dans la base de données
    $index_selection = 0;
    $limitation = 10;

//On se connecte à notre base de données (pensez à mettre les bons logins)
    try {
        $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);
    }
    catch(Exception $e) {die('Erreur : '.$e->getMessage());}

//On prépare la requête et on exécute celle-ci pour obtenir les informations souhaitées :
    $reponse = $bdd->prepare('SELECT * FROM `t_articles` ORDER BY dateHeure DESC LIMIT :index_selection, :limitation') or die(print_r($bdd->errorInfo()));
    $reponse->bindParam('index_selection', $index_selection, PDO::PARAM_INT);
    $reponse->bindParam('limitation', $limitation, PDO::PARAM_INT);
    $reponse->execute();

//Une fois les informations récupérées, on ajoute un à un les items à notre fichier
    while ($donnees = $reponse->fetch())
    {
        $xml .= '<item>';
        $xml .= '<title>'.stripcslashes($donnees['titre']).'</title>';
        $xml .= '<link>http://localhost/html-css-js/Projet%20Groupe/Blog%20emilie/BLOG/assets/php/main.php</link>';
        $xml .= '<guid isPermaLink="true">http://localhost/html-css-js/Projet%20Groupe/Blog%20emilie/BLOG/assets/php/main.php</guid>';
        $xml .= '<pubDate>'.(date("D, d M Y H:i:s O", strtotime($donnees['dateHeure']))).'</pubDate>';
        $xml .= '</item>';
    }

//Puis on termine la requête
    $reponse->closeCursor();

//Et on ferme le channel et le flux RSS.
    $xml .= '</channel>';
    $xml .= '</rss>';

    /*  Tout notre fichier RSS est maintenant contenu dans la variable $xml.
      Nous allons maintenant l'écrire dans notre fichier XML et ainsi mettre à jour notre flux.
      Pour cela, nous allons utiliser les fonctions de php File pour écrire dans le fichier.

      Notez que l'adresse URL du fichier doit être relative obligatoirement !
    */

//On ouvre le fichier en mode écriture
    $fp = fopen("flux_rss.xml", 'w+');

//On écrit notre flux RSS
    fputs($fp, $xml);

//Puis on referme le fichier
    fclose($fp);

} //Fermeture de la fonction
?>