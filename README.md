# 從高中數學到費馬最後定理

這是一套從高中數學語言起步、沿著現代證明一路走到 Frey–Ribet–Wiles–Taylor 的 52 章手稿。全書的學習承諾是：讀者最後能說清楚費馬最後定理（FLT）證明鏈上的**每一支箭頭**、每個定理的輸入與輸出，以及少了它為什麼無法走到下一步。

這個承諾不等於「只憑高中背景，就能逐行重建 Wiles 與 Taylor 的論文」。第零部從高中程度出發；之後逐步補入大學代數、分析、數論與幾何。進入 Ribet 的降階定理、Langlands–Tunnell、變形理論與 Taylor–Wiles patching 時，主路線完整交代它們在邏輯鏈中的位置與作用，研究級技術則明確標成選讀深潛或黑箱。兩種深度不混寫成同一種「已證明」。

## 先從哪裡讀

- 第一次閱讀：先看 [`reader-guide.md`](reader-guide.md) 的證明狀態圖例、先備地圖與「主線概念路線」，再由第 0.1 章出發。
- 想追技術：先完成主線的就緒檢查，再按「技術深潛路線」補讀；研究級黑箱仍須接續專書與原始論文。
- 查全書設計：[`outline.md`](outline.md) 列出第零部至第七部、共 52 章的功能與深度。
- 查實際檔案：[`progress.md`](progress.md) 記錄 52 份章稿是否存在；勾選「完成」只表示章稿已寫成，不表示章內引用的研究級定理已在本書逐行證完。

## 最外層矛盾，一眼看完

對奇質數指數 $p\ge 5$，若有本原反例 $a^p+b^p=c^p$，便構造 Frey 曲線

$$E_{a,b,p}:y^2=x(x-a^p)(x+b^p).$$

它是定義在 $\mathbb Q$ 上的半穩定橢圓曲線。Wiles–Taylor 的半穩定模性定理迫使 $E_{a,b,p}$ 模；Ribet 的 level lowering 再迫使其 mod $p$ 表示來自一個非零的權重 $2$、級 $2$ 尖特徵形式。然而

$$S_2(\Gamma_0(2))\cong H^0(X_0(2),\Omega^1),\qquad
\dim S_2(\Gamma_0(2))=g(X_0(2))=0,$$

所以 $S_2(\Gamma_0(2))=0$，所需的非零形式不存在，矛盾。指數歸約以及 $p=3,4$ 的處理，則由前面的初等路線完成。每一步的證明層級與必要性見讀者指南。

## 專案結構

- `reader-guide.md`　閱讀契約、四級證明狀態、依賴地圖與兩條閱讀路線
- `outline.md`　　　全書架構（八部、52 章）
- `notation.md`　　 全書記號約定（與 `preamble.tex` 巨集配合）
- `progress.md`　　 52 份章稿的檔案進度
- `chapters/`　　　 章節原稿（Pandoc Markdown ＋ LaTeX 數學式）
- `preamble.tex`　　XeLaTeX 前導：xeCJK／amsthm 定理環境／tikz-cd／記號巨集
- `filters/theorems.lua`　fenced div → amsthm 環境
- `build.sh`　　　　編譯腳本

## 編譯

需求：TeX Live（XeLaTeX、xeCJK、tikz-cd）、Pandoc、Noto Serif CJK TC 字型。

    ./build.sh ch0-1     # 單章 → build/ch0-1.pdf
    ./build.sh book      # 52 章全書（依部、章數字排序）

## 定理環境寫法

    ::: {.theorem name="歸約定理"}
    若 FLT 對 $n = 4$ 成立……
    :::

可用：theorem / proposition / lemma / corollary / conjecture / definition / example / remark / proof。

## 編排約定

- 單章編譯時定理於章內流水編號；全書編譯目前使用 article class 組稿。
- 交換圖：簡單者用 amscd／陣列，複雜者用 tikz-cd raw LaTeX 區塊（Pandoc 會原樣傳遞給 XeLaTeX）。
- 證明狀態是「某次使用某個結果」的標籤，不是整章的永久標籤；同一章可以同時含有完整證明、結構解釋與研究級黑箱。
