$(document).ready(function(){

$(document).on('change', "#fs", function() {
    //alert($(this).val());
    $('#changeMe *').css("font-family", $(this).val());

});

$(document).on('change', "#size", function() {
    $('#changeMe * ').css("font-size", $(this).val() + "px");
});







});
