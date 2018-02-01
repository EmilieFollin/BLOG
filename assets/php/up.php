<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 01/02/2018
 * Time: 13:14
 */



  //On va chercher le fichier php qui contient le code pour mettre à jour le flux RSS
  include_once("./mettreAJourRss.php");

  //On appelle la fonction de mise à jour du fichier
  update_fluxRSS();

?>