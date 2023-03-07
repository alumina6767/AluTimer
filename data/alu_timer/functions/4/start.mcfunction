#> alu_timer:4/start
# start
# @public

## ボスバーの表示
bossbar add timer.4 ""
bossbar set timer.4 name {"storage": "alu_timer","nbt":"4.name","interpret": true}
bossbar set timer.4 color blue
bossbar set timer.4 players @a
bossbar set timer.4 visible true

## tickに変換
scoreboard players operation _ timer.4 = set timer.4
scoreboard players operation _ timer.4 *= 20 const 
scoreboard players operation val timer.4 = _ timer.4
scoreboard players operation max timer.4 = _ timer.4
execute store result bossbar timer.4 max run scoreboard players get max timer.4

## タイマーを開始
scoreboard players set power timer.4 1