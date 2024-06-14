function putHeader() {
    const headerHTML = `
      <link rel="stylesheet" href="/header.css?v=1.1">
      <meta name="viewport" content="width=device-width,initial-scale=0.9">
      <div class="header">
        <img class="logo" src="/header.png" alt="shiiroiroと書かれたロゴ" style="width: 200px;">
        <div class="link-area">
          <div class="divide-line"></div>
          <a href="/index.html" style="color:inherit;text-decoration:none;">Home</a>
          <div class="divide-line"></div>
          <a href="/profile.html" style="color:inherit;text-decoration:none;">profile</a>
          <div class="divide-line"></div>
          <a href="/gallery" style="color:inherit;text-decoration:none;">gallery</a>
          <div class="divide-line"></div>
          <a href="/contact.html" style="color:inherit;text-decoration:none;">contact</a>
          <div class="divide-line"></div>
        </div>
      </div>
    `;
    document.getElementById('headerArea').innerHTML = headerHTML;
  }
  