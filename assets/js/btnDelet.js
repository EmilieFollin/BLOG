$(function() {

    console.log('LOAD BTN-DELET');

        $('.btn-delete').click(function () {

            console.log('CLICK BTN DELET');

            // TRAITEMENT AJAX
            $.ajax({

                // Adresse à laquelle la requête est envoyée
                url: '../php/admin/traitement/deleteAccount.php',

                // Le délai maximun en millisecondes de traitement de la demande
                timeout: 10000,

                // La fonction à apeller si la requête aboutie
                success: function () {
                    // Je charge les données dans box
                    location.href = "../../index.php"
                },

                // La fonction à appeler si la requête n'a pas abouti
                error: function() {
                    // J'affiche un message d'erreur
                    $('main').append("Désolé, une erreur est surevenue, veuillez essayer à nouveau plus tard...");
                }

            });


        })




        $('.btn-blog').click(function() {
            location.href = './admin.php#menuPrincipal  ';
        })

})