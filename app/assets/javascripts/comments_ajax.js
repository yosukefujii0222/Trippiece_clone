var id = $('.chat-block:last-child').data('comment-id');
var insertHTML = '';
$(function() {
  function buildHTML(comment) {
    //表示するメッセージのHTMLのかたまり
    var html = `<div class="chat-block">
                  <div class="chat-nickname">
                    ${comment.nickname}
                  </div>
                  <div class="chat-create-time">
                    ${comment.created_at}
                  </div>
                  <div class="chat-body">
                    ${comment.body}
                  </div>
                </div>`;
    return html;
  }
  //自動スクロールの関数
  function auto_scroll() {
    $(".side-chat-main").animate({scrollTop:$('.chat-block:last-child').offset().top});
  }
  //投稿後、SENDボタンをリフレッシュする関数
  function prop_abled(data) {
    $('form#new_comment.new_comment').prop('disabled', false);
  }
  //投稿後にフォームをリフレッシュする関数
  function new_form(data) {
    $('textarea#comment_body.text_content').val('');
  }
  //メッセージを一覧に追加する関数
  function append_html_to_list(html) {
    $('.side-chat-main').append(html);
  }
  //submitを押した時に発火すること
  $('.side-chat-post form#new_comment.new_comment').on('submit', function(e) {
    e.preventDefault();
    var formData = new FormData(this);
    var api_url = window.location + "/comments";
    console.log(api_url);
    $.ajax ({
      url: api_url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false,
    })
    .done(function(data) {
      var html = buildHTML(data);
      append_html_to_list(html);
      new_form(data);
      prop_abled(data);
      auto_scroll();
    })
    .fail(function() {
      alert('error');
    })
  });
  // 自動更新について以下に記述
  var interval = setInterval(function() {
    if (window.location.href.match(/\/recommends\/\d+\/comments/)){
    $.ajax({
      url: location.href,
      dataType: 'json',
    })
    .done(function(comments) {
      comments.forEach(function(data) {
        if (data.id > id ) {
          insertHTML += buildHTML(data);
          $('.side-chat-main').append(insertHTML);
          auto_scroll();
        }
      });
    })
    .fail(function(data) {
      alert('自動更新に失敗しました');
    });
    } else {
    clearInterval(interval);
    }}, 5 * 1000 );
});
