$(function() {

    $test = false;

        $('.btn-mesarticles').click(function(e) {


            // /////////////////////////////////////// //
            // //////// INITIALISATIONS ////////////// //
            // /////////////////////////////////////// //

            $test = !$test;


            // //////////////////////////////////// //
            // //////// GESTION AJAX ////////////// //
            // //////////////////////////////////// //

            if($test) {

                    // PARTIE AJAX

                $(".zone-articles").load("../php/mesArticles.php", { // accolades !

                });

                $(".zone-articles").html("<img src='http://www.veloclub-chatenay.fr/images/interfaces/chargement.gif'>");



                    // PARTIE BUTTON

                $('.btn-mesarticles').text('All Articles');

            } else {
                $(".zone-articles").load("../php/page.php", { // accolades !

                });

                $(".zone-articles").html("<img src='http://www.veloclub-chatenay.fr/images/interfaces/chargement.gif'>");


                    // PARTIE BUTTON

                $('.btn-mesarticles').text('Mes Articles');
            }



        })

})