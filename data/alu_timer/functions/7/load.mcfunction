#> alu_timer:7/load
# load
# @internal

#>
# @public
    #declare objective timer.7

## インストール
scoreboard objectives add timer.7 dummy
execute unless score set timer.7 matches -2147483648..2147483647 run function alu_timer:7/install
