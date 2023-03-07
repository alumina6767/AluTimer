#> alu_timer:5/install
# 導入時一度だけ実行
# @within alu_timer:5/load

## スコアボードの初期化
scoreboard players set set timer.5 600
scoreboard players set power timer.5 0

## ボスバーの名前
data modify storage alu_timer 5.name set value '[{"text":"タイマータイトル","color":"light_purple","bold":true}]'
