#> alu_timer:1/install
# 導入時一度だけ実行
# @within alu_timer:1/load

## スコアボードの初期化
scoreboard players set set timer.1 600
scoreboard players set power timer.1 0

## ボスバーの名前
data modify storage alu_timer 1.name set value '[{"text":"タイマータイトル","color":"red","bold":true}]'
