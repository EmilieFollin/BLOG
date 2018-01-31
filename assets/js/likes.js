$(function () {

    // TRAITEMENT ANIMATION

    console.log('LOAD NOTIFICATION ');

    $('.notification').click(function() {
        var count = Number($(this).attr('data-count')) || 0;
        $(this).attr('data-count', count + 1);
        $(this).removeClass('notify');
        $(this).offsetWidth = $(this).offsetWidth;
        $(this).addClass('notify');

        // RECUPERATION DES DONNEES
        articleId = $(this).parent().parent().children('.Titre').children('.articleId').children('span').text();

        // TRAITEMENT AJAX
        $(this).parent().children('.trash').load('../php/likes.php', {
            articleId : articleId,
        })

        // $(this).parent().children('.trash').html('<img src="http://www.kendo-lille.com/inscription/Image/chargement.gif">');

    })


})