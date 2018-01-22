$(function() {

            // GESTION DU +

        $('.btn-voir').click(function() {
            // On récupère la div article
            $article = $(this).parent().parent();

            // On modifie son CSS
            $article.css("height", "auto");

            // On modifie notre button
            $(this).replaceWith(
                '<button class="btn-cacher btn-5" id="cacher">-</button>'
            );

            console.log("SALUT LES GENS")

        })



                // GESTION DU -

        $('#cacher').click(function() {
            // On récupère la div article
            $article = $(this).parent().parent();

            // On modifie son CSS
            $article.css("height", "250px");

            // On modifie notre button
            $(this).replaceWith(
                '<button class="btn-voir btn-5">+</button>'
            );

            console.log("SALUT")

        })
})
