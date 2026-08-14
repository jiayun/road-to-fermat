-- theorems.lua — 將 pandoc fenced div 轉為 amsthm 環境
-- 用法（Markdown 端）：
--   ::: {.theorem name="歸約定理"}
--   若 FLT 對 $n = 4$ 成立……
--   :::
-- LaTeX 輸出：\begin{thm}[歸約定理] … \end{thm}
-- 非 LaTeX 輸出（如 HTML 預覽）：退化為粗體標題的引言區塊。

local envs = {
  theorem     = { env = "thm",      label = "定理" },
  proposition = { env = "prop",     label = "命題" },
  lemma       = { env = "lem",      label = "引理" },
  corollary   = { env = "cor",      label = "推論" },
  conjecture  = { env = "conj",     label = "猜想" },
  definition  = { env = "defn",     label = "定義" },
  example     = { env = "exa",      label = "例" },
  remark      = { env = "rem",      label = "註" },
  proof       = { env = "proof",    label = "證明" },
}

function Div(el)
  for _, cls in ipairs(el.classes) do
    local t = envs[cls]
    if t then
      if FORMAT:match("latex") then
        local opt = ""
        if el.attributes["name"] then
          opt = "[{" .. el.attributes["name"] .. "}]"
        end
        local blocks = pandoc.List({
          pandoc.RawBlock("latex", "\\begin{" .. t.env .. "}" .. opt)
        })
        blocks:extend(el.content)
        blocks:insert(pandoc.RawBlock("latex", "\\end{" .. t.env .. "}"))
        return blocks
      else
        -- 非 LaTeX 輸出的退化版：BlockQuote ＋ 粗體標籤
        local title = t.label
        if el.attributes["name"] then
          title = title .. "（" .. el.attributes["name"] .. "）"
        end
        local blocks = pandoc.List({
          pandoc.Para({ pandoc.Strong({ pandoc.Str(title .. "．") }) })
        })
        blocks:extend(el.content)
        return pandoc.BlockQuote(blocks)
      end
    end
  end
  return nil
end
