execute as @a[scores={timermode=1..}] run function timer:timer_display
execute as @a[scores={timermode=..-1,timerdata=1..}] run function timer:timer_display

execute as @a[scores={timerdata=0}] run title @s subtitle ["",{"text":"Time's up!","color":"blue"}]
execute as @a[scores={timerdata=0}] run title @s title ["",{"text":"⚠","color":"yellow"}]
execute as @a[scores={timerdata=0}] run playsound block.anvil.place master @s ~ ~ ~ 2000000000 2
execute as @a[scores={timerdata=0}] run scoreboard players reset @s timerdata

schedule function timer:tick 1s