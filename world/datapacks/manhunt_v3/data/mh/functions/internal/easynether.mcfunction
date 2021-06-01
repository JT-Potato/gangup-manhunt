#Create the custom (ooh) end portal
fill -5 255 -5 5 255 5 yellow_concrete
fill -4 255 -4 4 255 4 end_portal
title @a[nbt={Dimension:"minecraft:the_nether"}] subtitle {"text": "An end portal has been spawned at 0, 255, 0 Head back!"}

tag @a[nbt={Dimension:"minecraft:the_nether"}] add netherRewarded
schedule function mh:internal/easynether 10t