$(function(){
  var slidSpd = 1200;   //フェードの速度
  var slidTimer = 4000; //スライドの間隔
  var count = 0;      //count番目の画像が表示される

  //画像の枚数を調べて<li>にidを付加
  var qua = $("#photo li").length;
  for(i=0; i<qua; i++) {
    $("#photo li:eq("+i+")").attr("id", "list"+ i);
  }

  //画像をフェードさせる関数
  function photoFade() {
    $("#photo li#list"+count).appendTo('#photo');
    $('#photo li:last').css({ opacity:'0'})
    $('#photo li:last').stop(true, false).animate({ opacity:'1' }, slidSpd );
  }

  //カウントを1増やす関数
  function countUp(){
    if(count>=qua-1) {
      count = 0;
    } else {
      count ++;
    }
  }

  //カウントを1減らす関数
  function countDowm(){
    if(count<=0) {
      count = qua-1;
    } else {
      count --;
    }
  }

  //slidTimer秒毎に繰り返し処理をさせる関数
  var timerID;
  function timerStart(){
    clearInterval(timerID);
    timerID = setInterval(function(){
      countUp();
      photoFade();
    }, slidTimer);
  };

  //#next（次へ）ボタンがクリックされた時に実行される関数
  $("#next").click(function(){
    countUp();
    photoFade();
    timerStart();
  });

  //#baxk（戻る）ボタンがクリックされた時に実行される関数
  $("#back").click(function(){
    countDowm();
    photoFade();
    timerStart();
  });

  //スライドスタート
  photoFade();
  timerStart();
});
