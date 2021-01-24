execute as @a run team leave @a
tellraw @a {"text":"Shuffled Teams!"}
schedule function mh:internal/shuffle 1d