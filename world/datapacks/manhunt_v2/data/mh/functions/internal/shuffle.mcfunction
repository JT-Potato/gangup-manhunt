#shuffles teams
#stop the checkvictory clock because we literally delete every team
schedule clear mh:internal/checkvictory

execute as @a run team leave @a
#this works because assignteams runs constantly as a clock as well, so the teams will be replenished quickly
tellraw @a {"text":"Shuffled Teams!"}
schedule function mh:internal/shuffle 0.5d
schedule function mh:internal/checkvictory 5s