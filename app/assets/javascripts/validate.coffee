$document.ready ->

  $("form").each(->

    $(this).validate(
      rules:
        name:
          required: true,
          minlength: 3
        ,
        email:
          required: true,
          email: true
    )
  )

