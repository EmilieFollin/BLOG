$(function () {

    // TRAITEMENT ANIMATION

    console.log('LOAD NOTIFICATION ');

    $('.notification').click(function() {

        var count = Number($(this).attr('data-count')) || 0;

        if(!$(this).hasClass('liked')) {
            $(this).attr('data-count', count + 1);
            $(this).removeClass('notify');
            $(this).offsetWidth = $(this).offsetWidth;
            $(this).addClass('notify');
            $(this).addClass('liked');

            // RECUPERATION DES DONNEES
            articleId = $(this).parent().parent().children('.Titre').children('.articleId').children('span').text();

            // TRAITEMENT AJAX
            $(this).parent().children('.trash').load('../php/likes.php', {
                articleId : articleId,
                liked : true
            })


        } else {
            $(this).attr('data-count', count - 1);
            $(this).removeClass('liked');
            $(this).removeClass('notify');

            // RECUPERATION DES DONNEES
            articleId = $(this).parent().parent().children('.Titre').children('.articleId').children('span').text();

            // TRAITEMENT AJAX
            $(this).parent().children('.trash').load('../php/likes.php', {
                articleId : articleId,
                liked : false
            })
        }



        // $(this).parent().children('.trash').html('<img src="http://www.kendo-lille.com/inscription/Image/chargement.gif">');

    })


})