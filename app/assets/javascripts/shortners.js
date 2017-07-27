$("#new_shortner, .edit_shortner").validate({
  rules: {
    "shortner[url]": {
      required: true,
      url: true
    }
  }
});