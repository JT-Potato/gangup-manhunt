#compass clock
execute as @p[tag=tracked] at @s run setworldspawn ~ ~ ~
schedule function mh:internal/compass/setcompass 1t
