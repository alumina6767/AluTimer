#> alu_timer:4/main
# main
# @internal

#>
# @private
    #declare score_holder m 分
    #declare score_holder s 秒
    #declare score_holder ms ミリ秒


execute store result bossbar timer.4 value run scoreboard players get val timer.4

## 分と秒の算出
scoreboard players operation s timer.4 = val timer.4
scoreboard players operation s timer.4 /= 20 const

scoreboard players operation m timer.4 = s timer.4
scoreboard players operation m timer.4 /= 60 const

scoreboard players operation s timer.4 %= 60 const

## 0埋め表示
execute if score m timer.4 matches 0..9 if score s timer.4 matches 0..9 run bossbar set timer.4 name [{"storage":"alu_timer","nbt":"4.name","interpret": true},{"text":" 0","color":"white"},{"score":{"name":"m","objective":"timer.4"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"s","objective":"timer.4"},"color":"white"}]
execute if score m timer.4 matches 10.. if score s timer.4 matches 0..9 run bossbar set timer.4 name [{"storage":"alu_timer","nbt":"4.name","interpret": true},{"text":" ","color":"white"},{"score":{"name":"m","objective":"timer.4"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"s","objective":"timer.4"},"color":"white"}]
execute if score m timer.4 matches 0..9 if score s timer.4 matches 10.. run bossbar set timer.4 name [{"storage":"alu_timer","nbt":"4.name","interpret": true},{"text":" 0","color":"white"},{"score":{"name":"m","objective":"timer.4"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"s","objective":"timer.4"},"color":"white"}]
execute if score m timer.4 matches 10.. if score s timer.4 matches 10.. run bossbar set timer.4 name [{"storage":"alu_timer","nbt":"4.name","interpret": true},{"text":" ","color":"white"},{"score":{"name":"m","objective":"timer.4"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"s","objective":"timer.4"},"color":"white"}]

scoreboard players remove val timer.4 1

## 終了判定
execute if score val timer.4 matches -1 run function alu_timer:4/end
