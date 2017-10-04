$(function() {
  //ページ内どこをクリックしてもメニューを閉じること
  $(document).click(function() { $("ul.user-dropdown").hide() });
  $("i#user-menu.fa.fa-user-circle").click(function(ev){
    if ($("ul.user-dropdown").css("display") == "none") {
      //メニューをクリックする場合に発火させないこと
      ev.stopPropagation();
      $("ul.user-dropdown").hide();
      $("ul.user-dropdown").show();
    }
  });
});

