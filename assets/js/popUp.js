$(document).ready(function () {
    $('.pop-up-button').click(function () {
        $('.wrapper').toggleClass('show');
        $('.wrapper-two').removeClass('show');
    });

    $('.pop-up-button-sign-in').click(function () {
        $('.wrapper-two').toggleClass('show');
        $('.wrapper').removeClass('show');
    });
    $('#closePopUpLogin').click(function () {
        $('.wrapper').toggleClass('show');
        $('.wrapper-two').removeClass('show');
    });
    $('#closePopUpSignUp').click(function () {

        $('.wrapper-two').removeClass('show');
    });
});