#Give the thanks message
tellraw @a {"text":"Thanks for using JT potato's gangup manhunt datapack. We'd like it if you would keep this in, just to credit us. Enjoy!", "color": "aqua"}

#Cleanup from the server start/previous manhunt
function mh:internal/clean_from_previous
time set day
gamerule doImmediateRespawn true
gamerule keepInventory true

#Add Teams
team add speedrunners
team add hunters
team modify speedrunners prefix {"text":"Speedrunner ", "color": "blue"}
team modify hunters prefix {"text":"Hunter ", "color": "red"}
team add teams

#Assign teams
function mh:internal/assignteams

#Make the scoreboard
scoreboard objectives add teams dummy "Teams"
scoreboard objectives setdisplay sidebar teams

#Populate scoreboard
scoreboard objectives add deaths deathCount
scoreboard objectives add playerKillCount playerKillCount
scoreboard players set @a teams 10
tellraw @a {"text": "Debug: Finished populating scoreboard", "color": "yellow"}

#Starts the shuffling clock (happens every 20 mins)
function mh:internal/shuffle
tellraw @a {"text":"Manhunt starts now!", "color": "green"}

#Give hunters compasses, and set the person to be tracked
schedule function mh:internal/compass/makecompass 40t

#Start game functions
schedule function mh:internal/checkdeath 2t
schedule function mh:internal/checkvictory 2t
function mh:internal/easynether

#30 second truce - hunters cant attack
effect give @a[team=hunters] weakness 30 100