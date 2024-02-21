
execute as @a if score @s timer matches 1 run function timer:ui/open
execute as @a[scores={timer.settingspage=-349862}] at @s run function timer:ui/settings

scoreboard players reset @a timer
scoreboard players enable @a timer
