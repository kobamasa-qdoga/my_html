"use strict";
//当初は適当な位置に浮かび上がってくるだけのものだったがページサイズを変更すると表示がバグるので常にページの表示サイズを監視することで再計算させて表示を正しくした。
const popupImg = document.querySelector('.popup-img');
window.addEventListener('load', function() {
  var image = document.querySelector('.fade-in-image');
  image.classList.add('loaded');
});

document.addEventListener('DOMContentLoaded', function() {
  var img = document.getElementById('responsive-image');
  function checkSize() {
      if (window.innerWidth <= 768) {
          img.src = 'img_file/index_mobile.jpg'; // スマホ用の画像に変更
      } else {
          img.src = 'index.jpg'; // 通常の画像に戻す
      }
  }

  // ウィンドウのリサイズ時にもチェック
  window.addEventListener('resize', checkSize);

  // 初期ロード時にチェック
  checkSize();
});
