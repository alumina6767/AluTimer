#> alu_timer:4/uninstall
# リセット
# @internal

## スコアボードの削除
scoreboard objectives remove timer.4

## ボスバーの削除
bossbar remove timer.4

## ストレージの削除
data remove storage alu_timer 4
