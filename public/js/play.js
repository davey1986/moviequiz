

/*
* On click of button,
* display extra text, next arrow and check answer.
*/

$('.custom-btn-play').on('click', function(){
    // Variables
    let answer = $('#answer').text();
    let selected = $(this).text();
    let id = $('#answer-id').text();
    let correct_id = $(this).attr('id');

    if (answer === selected) {
        $(this).addClass('yes');
    } else {
        $(this).addClass('no');
        $('#'+id).addClass('yes');
    }
    $('#extra').removeClass('hidden');
    $('.pager').removeClass('hidden');

    // Disbale buttons so user doesn't click on them.
    $('.custom-btn-play').addClass('disabled').attr('disabled', true);

});
