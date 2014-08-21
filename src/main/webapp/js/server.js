$(function(){
    $('#mySlideContent').css('display','none');
    $('#addserverlink').click(function(){
        $('.addServerContent').slideToggle('slow');
        $(this).toggleClass('slideSign');
        return false;
    });
});