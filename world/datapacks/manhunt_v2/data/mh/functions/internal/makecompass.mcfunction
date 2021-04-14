#Gives compass
give @a[team=hunters] compass
#Gives helpful chat instructions
tellraw @a[team=hunters] {"text": "Your compass automatically points to the nearest speedrunner"}
#Add tracking tag to random speedrunner
tag @r[team=speedrunners] add tracked
#Set everyones spawnpoint so they respawn at where they're supposed to (not the world spawn, which will be the random speedrunner)
execute as @r at @s run spawnpoint @a ~ ~ ~
#start the compass refresh
function mh:internal/setcompass
#helpful chat message 2
say @a[tag=tracked] is being tracked