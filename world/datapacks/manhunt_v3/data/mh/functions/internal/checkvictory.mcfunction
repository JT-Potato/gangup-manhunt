#Set scoreboards up for tally of entities
scoreboard objectives add dragonCount dummy
scoreboard objectives add hunterCount dummy
scoreboard objectives add speedrunnerCount dummy
scoreboard players set @a dragonCount 0
scoreboard players set @a speedrunnerCount 0

#dragon
execute as @e[type=ender_dragon] run scoreboard players add @a dragonCount 1
execute if score @r dragonCount matches 8 run tellraw @a {"text": "SPEEDRUNNERS HAVE WON THE DRAGON IS DEAD", "color": "green"}

#players
#complete tally
execute as @a[team=speedrunners] run scoreboard players add @a speedrunnerCount 1
#self explanatory... sends out the win messages
execute if score @r speedrunnerCount matches 0 run tellraw @a {"text": "HUNTERS HAVE WON THERE ARE NO SPEEDRUNNERS", "color": "green"}

#recursion
schedule function mh:internal/checkvictory 1t

#End manhunt
#dragon is dying (death animation)
execute as @r at @s if score @r dragonCount matches 8 run function mh:end
#there are no speedrunners
execute as @r at @s if score @r speedrunnerCount matches 0 run function mh:end
#there are no hunters
execute as @r at @s if score @r hunterCount matches 0 run function mh:end