$(document).ready(function () {
  //   var chapter_id = $.getJSON("idcheck.php?callback=?", { url:  window.location.pathname }, function(json){
  // });

// var pathname = window.location.pathname;

  // Poll for new chapters.
  setInterval(function () {
    var chapter_id = location.pathname.split('/').pop();
    $.ajax({
      url: '/sections',
      dataType: 'json',
      method: 'get',
      data: {
        chapter_id: chapter_id
      }
    }).error(function () {
      console.log(arguments);
      if (window.location.hash === '#debug') {
        debugger;
      }
    }).done(function (entries) {
      console.log('got yo entries', entries)
      var last_id = $('nav ul li:last a').data('id') || 0;
      $.each(entries, function (i, e) {
        if (e.id <= last_id) {
          return;
        }

        var $title = $('<a>').text(e.section_title);
        $title.appendTo('nav ul');
        $title.wrap('<li class="lefting">');
        $title.attr('data-id', e.id);

        // console.log($title, e, e.id);
      });

    });

  }, 6000);

  $('nav').on('click', 'li a', function () {
    var id = $(this).data('id');

    if (id == undefined) {
      debugger;
    }

    $('#read-panel').load( '/sections/' + id + ' #wrap');


  });

  $('nav li:first').trigger('click');


});