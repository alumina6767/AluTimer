#> alu_timer:7/start
# start
# @public

## ボスバーの表示
bossbar add timer.7 ""
bossbar set timer.7 name {"storage": "alu_timer","nbt":"7.name","interpret": true}
bossbar set timer.7 color white
bossbar set timer.7 players @a
bossbar set timer.7 visible true

## tickに変換
scoreboard players operation _ timer.7 = set timer.7
scoreboard players operation _ timer.7 *= 20 const 
scoreboard players operation val timer.7 = _ timer.7
scoreboard players operation max timer.7 = _ timer.7
execute store result bossbar timer.7 max run scoreboard players get max timer.7

## タイマーを開始
scoreboard players set power timer.7 1