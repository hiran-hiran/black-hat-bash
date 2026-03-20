# 注意点・Tips

## BOM問題
- エディタがBOM付きUTF-8で保存する傾向あり
- shスクリプトの先頭にBOMがあると構文エラーになる
- 対策: エディタの設定でBOMなしUTF-8に変更する

## macOS bash
- `/bin/bash` は 3.2 で `&>>` 等のbash 4+構文が使えない
- brew bash 5.x + `#!/usr/bin/env bash` で回避
- `which bash` が古い方を返す場合は `source ~/.zshrc` でPATHを更新
