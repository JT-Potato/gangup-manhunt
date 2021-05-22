#Complete scoreboard
team add whichOneWon
execute if score @r dragonCount matches 8 run team modify whichOneWon prefix {"text":"Speedrunners have "}
execute if score @r hunterCount matches 0 run team modify whichOneWon prefix {"text":"Speedrunners have "}
execute if score @r speedrunnerCount matches 0 run team modify whichOneWon prefix {"text":"Hunters have "}
team join whichOneWon won!
scoreboard players add won! teams 2

#Thanks for playing
tellraw @a {"text":"Manhunt ended. Play again soon!"}
team add thanksForPlaying
team modify thanksForPlaying prefix {"text":"Thanks for "}
team join thanksForPlaying playing!
scoreboard players add playing! teams 1

#Clears every schedule - twice to be sure
schedule clear mh:internal/checkdeath
schedule clear mh:internal/checkvictory
schedule clear mh:internal/compass/setcompass
schedule clear mh:internal/assignteams
schedule clear mh:internal/shuffle
schedule clear mh:internal/easynether
schedule clear mh:internal/compass/compassinfoflash
schedule clear mh:internal/compass/compassbodge

schedule clear mh:internal/checkdeath
schedule clear mh:internal/checkvictory
schedule clear mh:internal/compass/setcompass
schedule clear mh:internal/assignteams
schedule clear mh:internal/shuffle
schedule clear mh:internal/easynether
schedule clear mh:internal/compass/compassinfoflash
schedule clear mh:internal/compass/compassbodge