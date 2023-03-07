#> alu_timer:5/load
# load
# @internal

#>
# @public
    #declare objective timer.5

## インストール
scoreboard objectives add timer.5 dummy
execute unless score set timer.5 matches -2147483648..2147483647 run function alu_timer:5/install
