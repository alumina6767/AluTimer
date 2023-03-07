#> alu_timer:6/load
# load
# @internal

#>
# @public
    #declare objective timer.6

## インストール
scoreboard objectives add timer.6 dummy
execute unless score set timer.6 matches -2147483648..2147483647 run function alu_timer:6/install
