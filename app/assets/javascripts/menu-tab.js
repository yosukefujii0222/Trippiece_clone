// <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
// <script>
$(function(){
    $('.user-mylist-contents div[id != "tab1"]').hide();
    //タブをクリックすると発火すること
    $("ul li.user-mylist-menu__item a").click(function(){
        // 一度全てのコンテンツを非表示にする
        $(".user-mylist-contents div").hide();

        // 次に選択されたコンテンツを再表示する
        $($(this).attr("href")).show();

        // 現在のcurrentクラスを削除
        $("li.user-mylist-menu__item a.current").removeClass("current");

        // 選択されたタブ（自分自身）にcurrentクラスを追加
        $(this).addClass("current");


        return false;
    });

});
// </script>
