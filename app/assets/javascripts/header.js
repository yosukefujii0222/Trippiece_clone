$(function() {
  //ページ内どこをクリックしてもメニューを閉じること
  $(document).click(function() { $("ul.user-dropdown").hide() });
  $("li.header-default-menu-item__user img").on("click", function(ev){
    if ($("ul.user-dropdown").css("display") == "none") {
      //メニューをクリックする場合に発火させないこと
      ev.stopPropagation();
      $("ul.user-dropdown").hide();
      $("ul.user-dropdown").show();
    }
  });
});

