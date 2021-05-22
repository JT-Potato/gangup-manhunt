give @a[nbt={Dimension:"minecraft:the_nether"}, tag=!netherRewarded] blaze_rod 16
give @a[nbt={Dimension:"minecraft:the_nether"}, tag=!netherRewarded] ender_pearl 16
msg @a[nbt={Dimension:"minecraft:the_nether"}, tag=!netherRewarded] Well done! Ya got your nether stuff. Head back.
tag @a[nbt={Dimension:"minecraft:the_nether"}] add netherRewarded
schedule function mh:internal/easynether 10t