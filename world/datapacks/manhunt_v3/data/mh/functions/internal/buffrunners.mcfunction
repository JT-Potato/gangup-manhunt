effect give @a[team=speedrunners] resistance 30 5
effect give @a[team=speedrunners] regeneration 30 2

#Last speedrunner gets more health
execute if score @r speedrunnerCount matches 1 run effect give @a[team=speedrunners] absorption 30 4

schedule function mh:internal/buffrunners 30s