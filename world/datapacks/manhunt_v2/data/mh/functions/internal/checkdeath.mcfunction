execute as @a[scores={deaths=1..}, team=speedrunners] at @s run tag @s add swap
execute as @a[tag=swap] at @s run team leave @s
execute as @a[tag=swap] at @s run team join hunters @s
execute as @a[tag=swap] at @s run say I am a hunter now!
execute as @a[tag=swap] at @s run tp @s @r[team=hunters]
execute as @a[tag=swap] at @s run tag @s remove swap
execute as @a[scores={deaths=1..}, team=hunters, limit=1] at @s if entity @a[scores={playerKillCount=1},team=speedrunners, limit=1] run tag @s add swap
execute as @a[tag=swap] at @s run team leave @s
execute as @a[tag=swap] at @s run team join speedrunners @s
execute as @a[tag=swap] at @s run say I am a speedrunner now!
execute as @a[tag=swap] at @s run tp @s @r[team=speedrunners]
execute as @a[tag=swap] at @s run tag @s remove swap
execute as @a[scores={deaths=1..}, team=hunters] at @s run give @s compass
execute as @a at @s run scoreboard players reset @s deaths
execute as @a at @s run scoreboard players reset @s playerKillCount
schedule function mh:internal/checkdeath 2t