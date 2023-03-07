#> alu_timer:6/install
# 導入時一度だけ実行
# @within alu_timer:6/load

## スコアボードの初期化
scoreboard players set set timer.6 600
scoreboard players set power timer.6 0

## ボスバーの名前
data modify storage alu_timer 6.name set value '[{"text":"タイマータイトル","color":"dark_purple","bold":true}]'
