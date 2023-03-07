#> alu_timer:5/start
# start
# @public

## ボスバーの表示
bossbar add timer.5 ""
bossbar set timer.5 name {"storage": "alu_timer","nbt":"5.name","interpret": true}
bossbar set timer.5 color pink
bossbar set timer.5 players @a
bossbar set timer.5 visible true

## tickに変換
scoreboard players operation _ timer.5 = set timer.5
scoreboard players operation _ timer.5 *= 20 const 
scoreboard players operation val timer.5 = _ timer.5
scoreboard players operation max timer.5 = _ timer.5
execute store result bossbar timer.5 max run scoreboard players get max timer.5

## タイマーを開始
scoreboard players set power timer.5 1