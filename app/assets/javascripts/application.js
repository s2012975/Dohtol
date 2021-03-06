// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require_tree .

$(function() {
  $('#back a').on('click',function(event){
    $('body, html').animate({
      scrollTop:0
    }, 800);
    event.preventDefault();
  });

  $("#images").skippr({
    transition : 'fade',　// ("fade" or "slide")
    speed : 1000,
    easing : 'easeOutQuart',
    navType : 'bubble',
    childrenElementType : 'div',
    arrows : false,
    autoPlay : true,
    autoPlayDuration : 6000,
    keyboardOnAlways : true,
    hidePrevious : false
  });
});



  // aboutページ
console.log('top')
$('#hoge').click(function() {
    console.log('hoge')
})

$(document).ready(function() {
  $('.about-list-item').click(function() {
    var $answer = $(this).find('.answer');
    if($answer.hasClass('open')) {
      $answer.removeClass('open');
      // slideUpで$answerを隠す
      $answer.slideUp();
      $(this).find('span').text('open');
    } else {
      $answer.addClass('open');
      $answer.slideDown();
      $(this).find('span').text('close');
    }
  });
})


$(function(){
  function readURL(input) {
    if(input.files && input.files[0]){
      var reader = new FileReader();
      reader.onload = function (e) {
        $('#img_prev').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
  $("#customer_profile_image").change(function(){
    readURL(this);
  });
});


$(function(){
  $('#sample-btn').click(function(){
  var test = "今回受けた●●合格までの受験回数は●●回でした。試験会場は●●です。\n試験前日までのタイムスケジュールは以下の通りです。\n●●。\n受験で気をつけたことや、学習のポイントは以下になります。\n●●"
  // test.gsub(/(\\r\\n|\\r|\\n)/, "\n")
  $('#sample_text_form').val(test);
  })
});

$(function(){
  $('#sample-books-btn').click(function(){
  var test = "「●●2級合格テキスト」　●●著　\n1周目に通読、2週目に練習問題、3周目に練習問題と章末問題。"
  // test.gsub(/(\\r\\n|\\r|\\n)/, "\n")
  $('#sample_books_form').val(test);
  })
});