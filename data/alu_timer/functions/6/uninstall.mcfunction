#> alu_timer:6/uninstall
# リセット
# @internal

## スコアボードの削除
scoreboard objectives remove timer.6

## ボスバーの削除
bossbar remove timer.6

## ストレージの削除
data remove storage alu_timer 6
