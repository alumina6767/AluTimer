#> alu_timer:7/main
# main
# @internal

#>
# @private
    #declare score_holder m 分
    #declare score_holder s 秒
    #declare score_holder ms ミリ秒


execute store result bossbar timer.7 value run scoreboard players get val timer.7

## 分と秒の算出
scoreboard players operation s timer.7 = val timer.7
scoreboard players operation s timer.7 /= 20 const

scoreboard players operation m timer.7 = s timer.7
scoreboard players operation m timer.7 /= 60 const

scoreboard players operation s timer.7 %= 60 const

## 0埋め表示
execute if score m timer.7 matches 0..9 if score s timer.7 matches 0..9 run bossbar set timer.7 name [{"storage":"alu_timer","nbt":"7.name","interpret": true},{"text":" 0","color":"white"},{"score":{"name":"m","objective":"timer.7"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"s","objective":"timer.7"},"color":"white"}]
execute if score m timer.7 matches 10.. if score s timer.7 matches 0..9 run bossbar set timer.7 name [{"storage":"alu_timer","nbt":"7.name","interpret": true},{"text":" ","color":"white"},{"score":{"name":"m","objective":"timer.7"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"s","objective":"timer.7"},"color":"white"}]
execute if score m timer.7 matches 0..9 if score s timer.7 matches 10.. run bossbar set timer.7 name [{"storage":"alu_timer","nbt":"7.name","interpret": true},{"text":" 0","color":"white"},{"score":{"name":"m","objective":"timer.7"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"s","objective":"timer.7"},"color":"white"}]
execute if score m timer.7 matches 10.. if score s timer.7 matches 10.. run bossbar set timer.7 name [{"storage":"alu_timer","nbt":"7.name","interpret": true},{"text":" ","color":"white"},{"score":{"name":"m","objective":"timer.7"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"s","objective":"timer.7"},"color":"white"}]

scoreboard players remove val timer.7 1

## 終了判定
execute if score val timer.7 matches -1 run function alu_timer:7/end
