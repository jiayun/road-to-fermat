# notation.md — 全書記號約定

> 與 `preamble.tex` 的巨集區同步維護。新章節引入新記號時，先登記於此。

## 數系

| 記號 | LaTeX | 意義 | 首次出現 |
|---|---|---|---|
| $\mathbb{N}$ | `\N` | 正整數 $\{1, 2, 3, \dots\}$（本書約定不含 0） | 0.1 |
| $\mathbb{Z}$ | `\Z` | 整數 | 0.1 |
| $\mathbb{Q}$ | `\Q` | 有理數 | 0.1 |
| $\mathbb{R}$ | `\R` | 實數 | 0.5 |
| $\mathbb{C}$ | `\C` | 複數 | 0.5 |
| $\mathbb{F}_p$ | `\F_p` | $p$ 個元素的有限體 | 1.4 |
| $\overline{\mathbb{Q}}$ | `\Qbar` | $\mathbb{Q}$ 的代數閉包 | 2.2 |

## 整除與同餘

| 記號 | LaTeX | 意義 | 首次出現 |
|---|---|---|---|
| $a \mid b$ | `a \divides b` | $a$ 整除 $b$ | 0.1 |
| $a \nmid b$ | `a \notdivides b` | $a$ 不整除 $b$ | 0.1 |
| $a \equiv b \pmod{n}$ | `a \equiv b \pmod{n}` | 同餘 | 0.2 |
| $\gcd(a, b)$ | `\gcd(a, b)` | 最大公因數 | 0.2 |

## 預先保留（後續部使用）

| 記號 | LaTeX | 意義 | 預計出現 |
|---|---|---|---|
| $\zeta_n$ | `\zeta_n` | $n$ 次本原單位根 $e^{2\pi i/n}$ | 0.5 |
| $\mathcal{O}_K$ | `\OK` | 數域 $K$ 的整數環 | 3.1 |
| $\operatorname{Gal}(L/K)$ | `\Gal(L/K)` | Galois 群 | 2.2 |
| $\operatorname{GL}_2$ | `\GL_2` | 二階一般線性群 | 1.3 |
| $\operatorname{Frob}_p$ | `\Frob_p` | Frobenius 元素 | 3.5 |
| $\bar\rho$ | `\bar\rho` | 剩餘（mod $\ell$）Galois 表示 | 6.1 |
| $a_p(E)$、$a_p(f)$ | — | 橢圓曲線／模形式的 $p$ 處係數 | 5.3 / 5.4 |
| $X_0(N)$ | `X_0(N)` | 模曲線 | 5.6 |
| $\Gamma_0(N)$ | `\Gamma_0(N)` | $\mathrm{SL}_2(\mathbb Z)$ 中左下角可被 $N$ 整除的同餘子群 | 5.5 |
| $S_2(\Gamma_0(N))$ | `S_2(\Gamma_0(N))` | 權重 $2$、級 $N$ 的尖形式空間 | 5.6 |
| $\rho_{E,\ell}$、$\bar\rho_{E,\ell}$ | — | 橢圓曲線 $E$ 的 $\ell$-進表示及其 mod $\ell$ 剩餘表示 | 6.2 |
| $R$ | `R` | 滿足指定局部條件的 Galois 表示之泛變形環 | 7.3 |
| $\mathbb{T}$ | `\mathbb{T}` | 對應模形式空間上的 Hecke 代數 | 7.4 |

## 慣例

- 「質數」一律指正質數；$p$、$\ell$ 預設為質數，$\ell$ 用於表示的係數質數以與曲線所在的 $p$ 區隔（第六部起嚴格執行）。
- 定理環境採 fenced div：`theorem`、`proposition`、`lemma`、`corollary`、`conjecture`、`definition`、`example`、`remark`、`proof`。
- 證明結束符 $\blacksquare$ 由 amsthm 自動加上，內文不手寫。
- 閱讀導覽中的 **[證]／[歸]／[構]／[黑]** 分別表示「本書完整證明／歸約至先前結果／結構性解釋／研究級黑箱」；它們描述結果的處理深度，不是數學記號，也不是整章的一次性評等。
