#!/bin/sh
# Wrap index.html (the Claude artifact source) into a full web page for GitHub Pages: docs/index.html
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="zh-Hans">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<meta name="description" content="ABRSM 钢琴音阶与琶音 1–8 级备考：指法、合手键盘、速度参考、记忆总表和抽查。">\n'
  printf '</head>\n<body>\n'
  cat index.html
  printf '\n</body>\n</html>\n'
} > docs/index.html
echo "built docs/index.html"
