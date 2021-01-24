tellraw @a {"text":"Thanks for using JT potato's gangup manhunt datapack. We'd like it if you would keep this in, just to credit us. Enjoy!", "color": "aqua"}
team remove hunters
team remove speedrunners
clear @a
team add speedrunners
team add hunters
team modify speedrunners prefix {"text":"Speedrunner ", "color": "blue"}
team modify hunters prefix {"text":"Hunter ", "color": "red"}
function mh:internal/assignteams
function mh:internal/shuffle
scoreboard objectives add deaths deathCount
scoreboard objectives add playerKillCount playerKillCount
time set day
give @a[team=hunters] compass
tellraw @a[team=hunters] {"text": "Your compass automatically points to the nearest speedrunner"}
tellraw @a {"text":"Manhunt starts now!"}
schedule function mh:internal/checkdeath 2t
# schedule function mh:internal/checkvictory 2t
tag @p[team=speedrunners] add tracked
execute as @r at @s run spawnpoint @a ~ ~ ~
schedule function mh:internal/setcompass 2t
say Tracking: @a[tag=tracked]