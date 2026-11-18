#!/bin/sh
# Wrap index.html (the Claude artifact source) into a full web page for GitHub Pages: docs/index.html
# docs/ also holds the home-screen icons (rendered from icon.svg), manifest.webmanifest and sw.js (offline copy).
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="zh-Hans">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<meta name="description" content="ABRSM 钢琴音阶与琶音 1–8 级备考：指法、合手键盘、速度参考、记忆总表和抽查。">\n'
  printf '<meta name="theme-color" content="#17202e">\n'
  printf '<meta name="apple-mobile-web-app-capable" content="yes">\n<meta name="mobile-web-app-capable" content="yes">\n'
  printf '<meta name="apple-mobile-web-app-title" content="音阶备考">\n'
  printf '<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">\n'
  printf '<link rel="apple-touch-icon" href="apple-touch-icon.png">\n'
  printf '<link rel="icon" type="image/png" sizes="32x32" href="favicon-32.png">\n'
  printf '<link rel="manifest" href="manifest.webmanifest">\n'
  printf '</head>\n<body>\n'
  cat index.html
  printf '\n<script>if("serviceWorker" in navigator) addEventListener("load",()=>navigator.serviceWorker.register("sw.js").catch(()=>{}));</script>\n'
  printf '</body>\n</html>\n'
} > docs/index.html
echo "built docs/index.html"
