scoreboard players set #val_day timerdata 24
scoreboard players set #val_hour timerdata 60
scoreboard players set #val_minute timerdata 60

execute if score @s timermode matches ..-1 run scoreboard players remove @s timerdata 1
execute if score @s timermode matches 1.. run scoreboard players add @s timerdata 1


# Tage berechnen aus Ticks
scoreboard players operation #Days timerdata = @s timerdata
scoreboard players operation #Days timerdata /= #val_day timerdata
scoreboard players operation #Days timerdata /= #val_hour timerdata
scoreboard players operation #Days timerdata /= #val_minute timerdata


# Konvertieren von Stunden zurück in Minuten, um diese später abzuziehen
scoreboard players operation #Daystimerdata timerdata = #Days timerdata
scoreboard players operation #Daystimerdata timerdata *= #val_day timerdata
# Stunden berechnen aus Ticks
scoreboard players operation #Hours timerdata = @s timerdata
scoreboard players operation #Hours timerdata /= #val_hour timerdata
scoreboard players operation #Hours timerdata /= #val_minute timerdata
scoreboard players operation #Hours timerdata -= #Daystimerdata timerdata


# Konvertieren von Stunden zurück in Minuten, um diese später abzuziehen
scoreboard players operation #Hourstimerdata timerdata = #Hours timerdata
scoreboard players operation #Hourstimerdata timerdata += #Daystimerdata timerdata
scoreboard players operation #Hourstimerdata timerdata *= #val_hour timerdata
# Minuten berechnen aus Ticks
scoreboard players operation #Minutes timerdata = @s timerdata
scoreboard players operation #Minutes timerdata /= #val_minute timerdata
scoreboard players operation #Minutes timerdata -= #Hourstimerdata timerdata


# Sekunden berechnen
scoreboard players operation #Minutestimerdata timerdata = #Minutes timerdata
scoreboard players operation #Minutestimerdata timerdata += #Hourstimerdata timerdata
scoreboard players operation #Minutestimerdata timerdata *= #val_minute timerdata
scoreboard players operation #Seconds timerdata = @s timerdata
scoreboard players operation #Seconds timerdata -= #Minutestimerdata timerdata


# 86400 => 1 Tag
execute if score @s timerdata matches 1..3599 if score #Seconds timerdata matches 0..9 run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"gold"},{"score":{"name":"#Minutes","objective":"timerdata"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"#Seconds","objective":"timerdata"},"color":"red"}]
execute if score @s timerdata matches 1..3599 unless score #Seconds timerdata matches 0..9 run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"gold"},{"score":{"name":"#Minutes","objective":"timerdata"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"#Seconds","objective":"timerdata"},"color":"red"}]

execute if score @s timerdata matches 3600..86399 if score #Hours timerdata matches 0..9 if score #Minutes timerdata matches 0..9 if score #Seconds timerdata matches 0..9 run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"gold"},{"text":"0","color":"red"},{"score":{"name":"#Hours","objective":"timerdata"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"#Minutes","objective":"timerdata"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"#Seconds","objective":"timerdata"},"color":"red"}]
execute if score @s timerdata matches 3600..86399 if score #Hours timerdata matches 0..9 if score #Minutes timerdata matches 0..9 unless score #Seconds timerdata matches 0..9 run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"gold"},{"text":"0","color":"red"},{"score":{"name":"#Hours","objective":"timerdata"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"#Minutes","objective":"timerdata"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"#Seconds","objective":"timerdata"},"color":"red"}]
execute if score @s timerdata matches 3600..86399 if score #Hours timerdata matches 0..9 unless score #Minutes timerdata matches 0..9 if score #Seconds timerdata matches 0..9 run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"gold"},{"text":"0","color":"red"},{"score":{"name":"#Hours","objective":"timerdata"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"#Minutes","objective":"timerdata"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"#Seconds","objective":"timerdata"},"color":"red"}]
execute if score @s timerdata matches 3600..86399 if score #Hours timerdata matches 0..9 unless score #Minutes timerdata matches 0..9 unless score #Seconds timerdata matches 0..9 run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"gold"},{"text":"0","color":"red"},{"score":{"name":"#Hours","objective":"timerdata"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"#Minutes","objective":"timerdata"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"#Seconds","objective":"timerdata"},"color":"red"}]
execute if score @s timerdata matches 3600..86399 unless score #Hours timerdata matches 0..9 if score #Minutes timerdata matches 0..9 if score #Seconds timerdata matches 0..9 run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"gold"},{"score":{"name":"#Hours","objective":"timerdata"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"#Minutes","objective":"timerdata"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"#Seconds","objective":"timerdata"},"color":"red"}]
execute if score @s timerdata matches 3600..86399 unless score #Hours timerdata matches 0..9 if score #Minutes timerdata matches 0..9 unless score #Seconds timerdata matches 0..9 run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"gold"},{"score":{"name":"#Hours","objective":"timerdata"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"#Minutes","objective":"timerdata"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"#Seconds","objective":"timerdata"},"color":"red"}]
execute if score @s timerdata matches 3600..86399 unless score #Hours timerdata matches 0..9 unless score #Minutes timerdata matches 0..9 if score #Seconds timerdata matches 0..9 run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"gold"},{"score":{"name":"#Hours","objective":"timerdata"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"#Minutes","objective":"timerdata"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"#Seconds","objective":"timerdata"},"color":"red"}]
execute if score @s timerdata matches 3600..86399 unless score #Hours timerdata matches 0..9 unless score #Minutes timerdata matches 0..9 unless score #Seconds timerdata matches 0..9 run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"gold"},{"score":{"name":"#Hours","objective":"timerdata"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"#Minutes","objective":"timerdata"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"#Seconds","objective":"timerdata"},"color":"red"}]

execute if score @s timerdata matches 86400.. run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"gold"},{"score":{"name":"#Days","objective":"timerdata"},"color":"red"},{"text":"d ","color":"red"},{"score":{"name":"#Hours","objective":"timerdata"},"color":"red"},{"text":"h ","color":"red"},{"score":{"name":"#Minutes","objective":"timerdata"},"color":"red"},{"text":"m ","color":"red"},{"score":{"name":"#Seconds","objective":"timerdata"},"color":"red"},{"text":"s ","color":"red"}]