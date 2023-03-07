#> alu_timer:5/uninstall
# リセット
# @internal

## スコアボードの削除
scoreboard objectives remove timer.5

## ボスバーの削除
bossbar remove timer.5

## ストレージの削除
data remove storage alu_timer 5
