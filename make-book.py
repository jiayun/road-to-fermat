#!/usr/bin/env python3
"""make-book.py — 把 chapters/ch*.md 組成單一 build/book-combined.md
- 依 (部, 章) 數字排序（修正 ch7-10 排在 ch7-2 前的字典序問題）
- 各章 YAML title → 二級標題；subtitle（部名）變化時插入一級部標題
- 章內標題整體降一級（## → ###）
"""
import glob, re, os

os.chdir(os.path.dirname(os.path.abspath(__file__)))

def key(path):
    m = re.search(r'ch(\d+)-(\d+)\.md$', path)
    return (int(m.group(1)), int(m.group(2)))

files = sorted(glob.glob('chapters/ch*.md'), key=key)

out = ['---',
       'title: "從高中數學到費馬最後定理"',
       'subtitle: "從畢氏三元數到 Wiles 的證明"',
       '---', '']

prev_part = None
for f in files:
    text = open(f, encoding='utf-8').read()
    m = re.match(r'---\n(.*?)\n---\n', text, re.S)
    meta, body = m.group(1), text[m.end():]
    tm = re.search(r'title:\s*"(.*)"', meta)
    sm = re.search(r'subtitle:\s*"(.*)"', meta)
    title = tm.group(1).replace('\\\\', '\\')
    part = sm.group(1).replace('\\\\', '\\') if sm else None

    if part and part != prev_part:
        out += [f'# {part}', '']
        prev_part = part
    out += [f'## {title}', '']
    # 章內標題降一級（僅處理行首的 #）
    shifted = re.sub(r'^(#+ )', r'#\1', body, flags=re.M)
    out += [shifted.rstrip(), '', '\\newpage', '']

open('build/book-combined.md', 'w', encoding='utf-8').write('\n'.join(out))
print(f'組稿完成：{len(files)} 章 → build/book-combined.md')
