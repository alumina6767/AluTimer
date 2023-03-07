#> alu_timer:6/start
# start
# @public

## ボスバーの表示
bossbar add timer.6 ""
bossbar set timer.6 name {"storage": "alu_timer","nbt":"6.name","interpret": true}
bossbar set timer.6 color purple
bossbar set timer.6 players @a
bossbar set timer.6 visible true

## tickに変換
scoreboard players operation _ timer.6 = set timer.6
scoreboard players operation _ timer.6 *= 20 const 
scoreboard players operation val timer.6 = _ timer.6
scoreboard players operation max timer.6 = _ timer.6
execute store result bossbar timer.6 max run scoreboard players get max timer.6

## タイマーを開始
scoreboard players set power timer.6 1