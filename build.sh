#!/usr/bin/env bash
# build.sh — 編譯《從高中數學到費馬最後定理》
# 用法：
#   ./build.sh ch0-1          # 編譯單章 chapters/ch0-1.md → build/ch0-1.pdf
#   ./build.sh book           # 依 chapters/ 檔名順序編譯全書
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p build

PANDOC_OPTS=(
  --pdf-engine=xelatex
  -H preamble.tex
  --lua-filter=filters/theorems.lua
  -V documentclass=article
  -V fontsize=11pt
  -V indent=false
)

if [[ "${1:-}" == "book" ]]; then
  python3 make-book.py
  pandoc build/book-combined.md -o build/flt-book.pdf "${PANDOC_OPTS[@]}" --toc --toc-depth=2
  echo "→ build/flt-book.pdf"
else
  ch="${1:?用法: ./build.sh <章節檔名（不含副檔名）> 或 ./build.sh book}"
  pandoc "chapters/${ch}.md" -o "build/${ch}.pdf" "${PANDOC_OPTS[@]}"
  echo "→ build/${ch}.pdf"
fi
