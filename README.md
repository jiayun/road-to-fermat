# 從高中數學到費馬最後定理

## 結構
- `outline.md`　　　全書架構（七部約四十章）
- `notation.md`　　 記號約定表（與 preamble.tex 巨集同步）
- `chapters/`　　　 章節原稿（pandoc Markdown ＋ LaTeX 數學式）
- `preamble.tex`　　xelatex 前導：xeCJK／amsthm 定理環境／tikz-cd／記號巨集
- `filters/theorems.lua`　fenced div → amsthm 環境
- `build.sh`　　　　編譯腳本

## 編譯
需求：texlive（xelatex、xeCJK、tikz-cd）、pandoc、Noto Serif CJK TC 字型。

    ./build.sh ch0-1     # 單章 → build/ch0-1.pdf
    ./build.sh book      # 全書（依 chapters/ch*.md 檔名排序）

## 定理環境寫法
    ::: {.theorem name="歸約定理"}
    若 FLT 對 $n = 4$ 成立……
    :::

可用：theorem / proposition / lemma / corollary / conjecture / definition / example / remark / proof。

## 約定
- 單章編譯時定理於章內流水編號；全書編譯改 book class 後再切換為章節編號。
- 交換圖：簡單者用 amscd／陣列，複雜者用 tikz-cd raw LaTeX 區塊（pandoc 會原樣傳遞給 xelatex）。
