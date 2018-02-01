$(function() {

    console.log('CLICK CATEGORIE')


    $('.btn-categorie').click(function() {

        // On récupère notre titre de classe
        $categorie = '.' + $(this).text();

            // On vérifie que notre tableau ne contient pas la catégorie séléctionnée
            if($(this).hasClass('checked')) {

                // On retire la class .checked
                $(this).removeClass('checked');

                // On enlève la class .show à notre article
                $($categorie).removeClass('show');

                // SI ON A RIEN DE CHECKED
                if($('.checked').length == 0) {
                    $('.article').addClass('show');
                } else {
                    $(this).removeClass('show');
                }

            } else {

                // SI ON A RIEN DE CHECKED
                if($('.checked').length == 0) {
                    $('.article').removeClass('show');
                    $($categorie).addClass('show');
                } else {
                    $($categorie).addClass('show');
                }

                // On ajoute la class checked
                $(this).addClass('checked');

            }



            if($('.show').length == 0) {
                $('.zone-error').html('<div class="alert alert-danger"> Vous n\'avez aucun article correspondant à cette catégorie </div> ')
            } else {
                $('.zone-error').html('<div class="alert alert-success"> <a>Afficher plus d\'articles</a></div> ')
            }





    })

});