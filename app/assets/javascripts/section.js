function remove_fields(link) {
  $(link).previous("input[type=hidden]").value = "1";
  $(link).up(".clown").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).up().insert({
    before: content.replace(regexp, new_id)
  });
}


var add_section = function(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");

  $('#addsection').before(content.replace(regexp, new_id));
}


$(document).ready(function(){

var  delete_section = function(){
  var $this = $(this);
  $this.prev("input[type=hidden]").attr('value',true);
  $this.closest(".delete_section").hide();
}

$('.delete_section').on('click', '#delete_section', delete_section);

});