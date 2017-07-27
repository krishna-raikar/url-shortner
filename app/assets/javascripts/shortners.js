$("#open_link_btn").unbind('click').bind('click', function(){
  $("#short_url_form").submit();
});


$("#new_shortner, .edit_shortner").validate({
  rules: {
    "shortner[url]": {
      required: true,
      url: true
    }
  }
});