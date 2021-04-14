#shuffles teams
execute as @a run team leave @a
#this works because assignteams runs constantly as a clock as well, so the teams will be replenished quickly
tellraw @a {"text":"Shuffled Teams!"}
schedule function mh:internal/shuffle 1d