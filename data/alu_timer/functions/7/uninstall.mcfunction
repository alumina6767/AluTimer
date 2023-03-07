#> alu_timer:7/uninstall
# リセット
# @internal

## スコアボードの削除
scoreboard objectives remove timer.7

## ボスバーの削除
bossbar remove timer.7

## ストレージの削除
data remove storage alu_timer 7
