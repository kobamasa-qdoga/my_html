document.addEventListener('DOMContentLoaded', function() {
  const selectedImageContainer = document.getElementById('selected-image-container');
  const overlay = document.getElementById('overlay'); // オーバーレイの要素を取得
  const closeBtn = document.getElementById('close-btn');

  // 画像アイテムがクリックされた時のイベントリスナーを設定
  document.querySelector('.image-list').addEventListener('click', function(event) {
    const imageItem = event.target.closest('.image-item');
    if (imageItem) {
      const imgElement = imageItem.querySelector('img');
      const src = imgElement.src;
      // 仮の日付とタイトル、これらは動的に変更可能
      // const date = '作った日';
      // const title = 'タイトル';
      // showSelectedImage(src, date, title);
      showSelectedImage(src);
      overlay.style.display = 'block'; // オーバーレイを表示
      event.stopPropagation(); // イベントの伝播を停止
    }
  });
  document.addEventListener('click', function(event) {
    // クリックされた要素がselectedImageContainer内にあるか、closeBtn自体であるかをチェック
    const isClickInsideContainer = selectedImageContainer.contains(event.target);
    const isCloseBtn = event.target === closeBtn;
  
    // クリックがselectedImageContainerの外側である、またはcloseBtnがクリックされた場合
    if (!isClickInsideContainer || isCloseBtn) {
      selectedImageContainer.classList.remove('active');
      overlay.style.display = 'none'; // オーバーレイを非表示
    }
  });
  

  // selected-image-container内のクリックイベントが親要素へ伝播しないようにする
  selectedImageContainer.addEventListener('click', function(event) {
    event.stopPropagation();
  });
});

// 画像を表示する関数を定義
function showSelectedImage(src) {
  const selectedImage = document.getElementById('selected-image');
  const imageTitle = document.getElementById('title');
  const imageText = document.getElementById('text');

  selectedImage.src = src;
  // imageTitle.textContent = title;
  // imageText.textContent = date;
  document.getElementById('selected-image-container').classList.add('active');
}
document.getElementById('yourModalOpenButton').addEventListener('click', function() {
  document.getElementById('overlay').style.display = 'block';
  document.getElementById('selected-image-container').classList.add('active');
});

document.getElementById('yourModalCloseButton').addEventListener('click', function() {
  document.getElementById('overlay').style.display = 'none';
  document.getElementById('selected-image-container').classList.remove('active');
});
