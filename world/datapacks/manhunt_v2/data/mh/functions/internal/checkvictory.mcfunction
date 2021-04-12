scoreboard objectives add dragonCount dummy
scoreboard objectives add hunterCount dummy
scoreboard objectives add speedrunnerCount dummy
scoreboard players set @a dragonCount 0
scoreboard players set @a hunterCount 999
scoreboard players set @a speedrunnerCount 999
execute as @e[type=ender_dragon] run scoreboard players add @a dragonCount 1
execute if score @r dragonCount matches 8 run tellraw @a {"text": "SPEEDRUNNERS HAVE WON THE DRAGON IS DEAD", "color": "green"}

execute as @a[team=speedrunners] run scoreboard players add @a speedrunnerCount 1
execute as @a[team=hunters] run scoreboard players add @a hunterCount 1
execute if score @r hunterCount matches 0 run tellraw @a {"text": "SPEEDRUNNERS HAVE WON THERE ARE NO HUNTERS", "color": "green"}
execute if score @r speedrunnerCount matches 0 run tellraw @a {"text": "HUNTERS HAVE WON THERE ARE NO SPEEDRUNNERS", "color": "green"}

#End manhunt
execute as @r at @s if score @r dragonCount matches 8 run function mh:end
execute as @r at @s if score @r speedrunnerCount matches 0 run function mh:end
execute as @r at @s if score @r hunterCount matches 0 run function mh:end
#recursion
execute as @r at @s if score @r dragonCount matches 0 run schedule function mh:internal/checkvictory 2t
execute as @r at @s if score @r speedrunnerCount matches 999 run schedule function mh:internal/checkvictory 2t
execute as @r at @s if score @r hunterCount matches 999 run schedule function mh:internal/checkvictory 2t