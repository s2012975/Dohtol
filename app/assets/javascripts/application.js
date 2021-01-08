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
//= require turbolinks
//= require jquery
//= require_tree .
//= require jquery.raty.js

$(function() {
  $('#back a').on('click',function(event){
    $('body, html').animate({
      scrollTop:0
    }, 800);
    event.preventDefault();
  });
});


$(document).ready(function () {
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



$('.review-rating').raty({
  readOnly: true,
  score: function() {
    return $(this).attr('data-score');
  },
  path: '/assets/'
});


  // aboutページ

$('.about-list-item').click(function() {
  var $answer = $(this).find('.answer');
  if($answer.hasClass('open')) {
    $answer.removeClass('open');
    // slideUpメソッドを用いて、$answerを隠してください
    $answer.slideUp();

    // 子要素のspanタグの中身をtextメソッドを用いて書き換えてください
    $(this).find('span').text('open');

  } else {
    $answer.addClass('open');
    // slideDownメソッドを用いて、$answerを表示してください
    $answer.slideDown();

    // 子要素のspanタグの中身をtextメソッドを用いて書き換えてください
    $(this).find('span').text('close');

  }
});


// tableのtr要素にリンク

$('tr[data-link]').click(function() {
  window.location = $(this).data('link')
})