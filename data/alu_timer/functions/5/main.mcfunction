#> alu_timer:5/main
# main
# @internal

#>
# @private
    #declare score_holder m 分
    #declare score_holder s 秒
    #declare score_holder ms ミリ秒


execute store result bossbar timer.5 value run scoreboard players get val timer.5

## 分と秒の算出
scoreboard players operation s timer.5 = val timer.5
scoreboard players operation s timer.5 /= 20 const

scoreboard players operation m timer.5 = s timer.5
scoreboard players operation m timer.5 /= 60 const

scoreboard players operation s timer.5 %= 60 const

## 0埋め表示
execute if score m timer.5 matches 0..9 if score s timer.5 matches 0..9 run bossbar set timer.5 name [{"storage":"alu_timer","nbt":"5.name","interpret": true},{"text":" 0","color":"white"},{"score":{"name":"m","objective":"timer.5"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"s","objective":"timer.5"},"color":"white"}]
execute if score m timer.5 matches 10.. if score s timer.5 matches 0..9 run bossbar set timer.5 name [{"storage":"alu_timer","nbt":"5.name","interpret": true},{"text":" ","color":"white"},{"score":{"name":"m","objective":"timer.5"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"s","objective":"timer.5"},"color":"white"}]
execute if score m timer.5 matches 0..9 if score s timer.5 matches 10.. run bossbar set timer.5 name [{"storage":"alu_timer","nbt":"5.name","interpret": true},{"text":" 0","color":"white"},{"score":{"name":"m","objective":"timer.5"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"s","objective":"timer.5"},"color":"white"}]
execute if score m timer.5 matches 10.. if score s timer.5 matches 10.. run bossbar set timer.5 name [{"storage":"alu_timer","nbt":"5.name","interpret": true},{"text":" ","color":"white"},{"score":{"name":"m","objective":"timer.5"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"s","objective":"timer.5"},"color":"white"}]

scoreboard players remove val timer.5 1

## 終了判定
execute if score val timer.5 matches -1 run function alu_timer:5/end
