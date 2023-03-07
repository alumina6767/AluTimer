#> alu_timer:4/install
# 導入時一度だけ実行
# @within alu_timer:4/load

## スコアボードの初期化
scoreboard players set set timer.4 600
scoreboard players set power timer.4 0

## ボスバーの名前
data modify storage alu_timer 4.name set value '[{"text":"タイマータイトル","color":"blue","bold":true}]'
