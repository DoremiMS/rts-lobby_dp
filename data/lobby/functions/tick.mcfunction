# store daytime
execute store result score time daytime run time query daytime
## night bell sound
execute if score time daytime matches 18000 run execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 2 0
execute if score time daytime matches 18080 run execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 2 0
execute if score time daytime matches 18160 run execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 2 0
execute if score time daytime matches 18240 run execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 2 0
execute if score time daytime matches 18320 run execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 2 0
## night open door
execute if score time daytime matches 18000 run fill 256 17 -313 253 16 -313 air
## day close door
execute if score time daytime matches 6000 run fill 256 18 -313 253 16 -313 minecraft:stone_brick_stairs

# hat
## copy
execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{hat:1b}}]}] at @s if score @s sneaktime matches 1 if data entity @s {SelectedItem:{tag:{hat:1b}}} run item replace entity @s armor.head from entity @s weapon.mainhand
## delete item
execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{hat:1b}}]}] at @s if score @s sneaktime matches 1 if data entity @s {SelectedItem:{tag:{hat:1b}}} run item replace entity @s weapon.mainhand with air
## reset score
scoreboard players set @a sneaktime 0