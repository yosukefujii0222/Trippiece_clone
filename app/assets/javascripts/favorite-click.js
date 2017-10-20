$(function() {
  $("[id=favorite-link]").on("click", function() {
    $(this).children('i').toggleClass('fa-spin');
    $(document).on('page:change');
  })
})
