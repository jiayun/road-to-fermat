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

## 慣例

- 「質數」一律指正質數；$p$、$\ell$ 預設為質數，$\ell$ 用於表示的係數質數以與曲線所在的 $p$ 區隔（第六部起嚴格執行）。
- 定理環境採 fenced div：`theorem`、`proposition`、`lemma`、`corollary`、`conjecture`、`definition`、`example`、`remark`、`proof`。
- 證明結束符 $\blacksquare$ 由 amsthm 自動加上，內文不手寫。
