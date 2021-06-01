#in the event of a speedrunner death
execute as @a[scores={deaths=1..}, team=speedrunners] at @s run tag @s add swap
execute as @a[tag=swap] at @s run team leave @s
execute as @a[tag=swap] at @s run team join hunters @s
execute as @a[tag=swap] at @s run say I am a hunter now!
execute as @a[tag=swap] at @s run tp @s @r[team=hunters]

#reset the compass to a different speedrunner
tag @a remove tracked
tag @p[team=speedrunners] add tracked

#remove swap tag - swap is complete
execute as @a[tag=swap] at @s run tag @s remove swap

#When a hunter dies
execute as @a[scores={deaths=1..}, team=hunters] at @s run give @s compass
execute as @a[scores={deaths=1..}, team=hunters] at @s run tp @s @r[team=hunters]

#reset for this death tally
execute as @a at @s run scoreboard players reset @s deaths
execute as @a at @s run scoreboard players reset @s playerKillCount

#Recursion.
schedule function mh:internal/checkdeath 2t