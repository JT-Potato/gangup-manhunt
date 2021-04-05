tellraw @a {"text":"Thanks for using JT potato's gangup manhunt datapack. We'd like it if you would keep this in, just to credit us. Enjoy!", "color": "aqua"}
function mh:internal/clean_from_previous

#Add Teams
team add speedrunners
team add hunters
team modify speedrunners prefix {"text":"Speedrunner ", "color": "blue"}
team modify hunters prefix {"text":"Hunter ", "color": "red"}
team add teams

#Make the scoreboard
scoreboard objectives add teams dummy "Teams"
scoreboard objectives setdisplay sidebar teams

#Assigns teams
function mh:internal/assignteams
function mh:internal/shuffle
scoreboard objectives add deaths deathCount
scoreboard objectives add playerKillCount playerKillCount
time set day
give @a[team=hunters] compass
tellraw @a[team=hunters] {"text": "Your compass automatically points to the nearest speedrunner"}
tellraw @a {"text":"Manhunt starts now!", "color": "green"}
tag @p[team=speedrunners] add tracked
execute as @r at @s run spawnpoint @a ~ ~ ~
schedule function mh:internal/setcompass 2t
say Tracking: @a[tag=tracked]

#Populate scoreboard
scoreboard players add @a teams 100
tellraw @a {"text": "Debug: Finished populating scoreboard", "color": "yellow"}

#Start game functions
schedule function mh:internal/checkdeath 2t
schedule function mh:internal/checkvictory 2t