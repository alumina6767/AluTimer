#> alu_timer:2/install
# 導入時一度だけ実行
# @within alu_timer:2/load

## スコアボードの初期化
scoreboard players set set timer.2 600
scoreboard players set power timer.2 0

## ボスバーの名前
data modify storage alu_timer 2.name set value '[{"text":"タイマータイトル","color":"yellow","bold":true}]'
