#> alu_timer:7/install
# 導入時一度だけ実行
# @within alu_timer:7/load

## スコアボードの初期化
scoreboard players set set timer.7 600
scoreboard players set power timer.7 0

## ボスバーの名前
data modify storage alu_timer 7.name set value '[{"text":"タイマータイトル","color":"white","bold":true}]'
