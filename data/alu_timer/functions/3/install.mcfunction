#> alu_timer:3/install
# 導入時一度だけ実行
# @within alu_timer:3/load

## スコアボードの初期化
scoreboard players set set timer.3 600
scoreboard players set power timer.3 0

## ボスバーの名前
data modify storage alu_timer 3.name set value '[{"text":"タイマータイトル","color":"green","bold":true}]'
