#> alu_timer:2/start
# start
# @public

## ボスバーの表示
bossbar add timer.2 ""
bossbar set timer.2 name {"storage": "alu_timer","nbt":"template.name","interpret": true}
bossbar set timer.2 color red
bossbar set timer.2 players @a
bossbar set timer.2 visible true

## tickに変換
scoreboard players operation _ timer.2 = set timer.2
scoreboard players operation _ timer.2 *= 20 const 
scoreboard players operation val timer.2 = _ timer.2
scoreboard players operation max timer.2 = _ timer.2
execute store result bossbar timer.2 max run scoreboard players get max timer.2

## タイマーを開始
scoreboard players set power timer.2 1