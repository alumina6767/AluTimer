#> alu_timer:4/load
# load
# @internal

#>
# @public
    #declare objective timer.4

## インストール
scoreboard objectives add timer.4 dummy
execute unless score set timer.4 matches -2147483648..2147483647 run function alu_timer:4/install
